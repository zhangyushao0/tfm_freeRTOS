#!/usr/bin/python3
from elftools.elf.elffile import ELFFile

project_path = '/home/han/srtp_new/tfm_freeRTOS_dwt'

elf_path = project_path + "/build/bin/ns_app.elf"
output_relocation_info_path = (
    project_path + "/platform/ext/target/stm/aslr_freertos_nsapp/loader/src/relocation.c"
)
output_functions_info_path = (
    project_path + "/platform/ext/target/stm/aslr_freertos_nsapp/loader/src/func.c"
)
output_trampline_info_path = (
    project_path + "/platform/ext/target/stm/aslr_freertos_nsapp/loader/src/trampoline.c"
)
output_read_flash_path = (
    project_path + "/platform/ext/target/stm/aslr_freertos_nsapp/loader/src/read_flash.c"
)
need_relocation_secions = ["text", "handler"]

code_start = 0x08005000

tra_section_addr = 0
tra_section_size = 0
tra_A_B_addr = 0
tra_A_B_size = 0
tra_B_A_addr = 0
tra_B_A_size = 0
trampoline_blx_addr = 0
trampoline_blx_size = 0
handler_section_addr = 0
handler_section_size = 0

def section_index(section, sections):
    for i in range(len(sections)):
        if section == sections[i][1]:
            return i
    return -1

def get_function_id(functions_info, addr):
    for i in range(len(functions_info)):
        if addr >= functions_info[i][0] - 1 and addr < functions_info[i][0] + functions_info[i][1] - 1:
            return i
    return -1

def output_relocation_info(info):
    # 将 info 按第一位从小到大排序
    info.sort(key=lambda x: x[0])
    with open(output_relocation_info_path, "w") as f:
        f.write('#include "relocation.h"\n')
        f.write("\n")
        f.write("uint32_t table_size = ")
        f.write(str(len(info)) + ";\n")
        f.write("\n")
        f.write("relocation_info_t relocation_info[")
        f.write(str(len(info)))
        f.write("] = {\n")
        for entry in info:
            address = hex(entry[0])
            value = hex(entry[1])
            type = entry[2]
            func_id1 = entry[3]
            func_id2 = entry[4]
            name = entry[5]
            f.write(
                "    {"
                + address
                + ", "
                + value
                + ", "
                + str(type)
                + ", "
                + str(func_id1)
                + ", "
                + str(func_id2)
                + "},"
                + "  //"
                + name
                + "\n"
            )
        f.write("};\n")


def output_functions_info(functions_info):
    # sorted(functions_info, key=lambda x: x[0])
    with open(output_functions_info_path, "w") as f:
        f.write('#include "func.h"\n')
        f.write("\n")
        f.write("uint32_t func_info_size = ")
        f.write(str(len(functions_info)) + ";\n")
        f.write("\n")
        f.write("func_info_t func_info[")
        f.write(str(len(functions_info)))
        f.write("] = {\n")
        for addr, size, name in functions_info:
            f.write(
                "    {"
                + hex(addr)
                + ", "
                + str(size)
                + ", "
                + str(-1)
                + ", "
                + str(0)
                + "},"
                + "  //"
                + name
                + "\n"
            )
        f.write("};\n")

# 生成符号表信息
def parse_symbol_table(elf_file):
    symbol_tables = elf_file.get_section_by_name(".symtab")
    table_infos = []
    # print("Symbol table '.symtab' contains %d entries:" % symbol_tables.num_symbols())
    # print("%8s %16s %5s %s" % ("Num", "Value", "Size", "Name"))
    for symbol in symbol_tables.iter_symbols():
        table_infos.append(
            [
                symbol["st_value"],
                symbol["st_size"],
                symbol["st_info"]["type"],
                symbol["st_shndx"],
                symbol.name if symbol.name else "",
            ]
        )
        # print(f'index {i}, value {symbol["st_value"]}, size {symbol["st_size"]}, type {symbol["st_info"]["type"]}, visibility {symbol["st_other"]["visibility"]}, bind {symbol["st_info"]["bind"]}, section index {symbol["st_shndx"]}, name {symbol.name if symbol.name else ""}')
    return table_infos

# 生成 trampline 对应的 section 信息
def parse_section_table(elf_file):

    # print("There are %d section headers, starting at offset 0x%x:" % (elf_file.num_sections(), elf_file['e_shoff']))
    sections_info = []
    for section in elf_file.iter_sections():
        sections_info.append([section["sh_addr"], section.name])
        # print(section.name)
        if section.name == ".tram_section":
            global tra_section_addr
            tra_section_addr = section["sh_addr"]
            global tra_section_size
            tra_section_size = section["sh_size"]
        if section.name == '.handler':
            global handler_section_addr
            handler_section_addr = section["sh_addr"]
            global handler_section_size
            handler_section_size = section["sh_size"]

        # name = section.name
        # type_str = section['sh_type']
        # addr = section['sh_addr']
        # offset = section['sh_offset']
        # size = section['sh_size']
        # es = section['sh_entsize']
        # flags = section['sh_flags']
        # link = section['sh_link']
        # info = section['sh_info']
        # align = section['sh_addralign']
        # print(f'name {name}, type {type_str}, addr {hex(addr)}, offset {hex(offset)}, size {size}, es {es}, flags {flags}, link {link}, info {info}, align {align}')
    return sections_info

# 生成 relocation 信息
def generate_relocation_info(elf_file, symbol_tables, functions_info):
    rel_sections = []
    for index, section in enumerate(elf_file.iter_sections()):
        for need_section in need_relocation_secions:
            if section.name == ".rel." + need_section:
                rel_sections.append([section, index - 1])
    if rel_sections == []:
        print("Relocation table section not found.")
        return

    info = []

    # # Iterate over the relocation entries
    for rel_section, index in rel_sections:
        # section_addr = sections_info[index][0]
        # print(f"Relocation section {rel_section.name} at {hex(section_addr)}")
        for relocation in rel_section.iter_relocations():
            symbol = symbol_tables[relocation["r_info_sym"]]
            value = symbol[0]
            #  + sections_info[symbol[3]][0]
            offset = relocation["r_offset"]
            # + section_addr
            relocation_type = relocation["r_info_type"]
            type = -1
            name = symbol[4]
            func_id1 = -1
            func_id2 = -1
            if relocation_type == 0x02:
                type = 0  # exception entry
                func_id2 = get_function_id(functions_info, value)
                # offset -= section_addr
            elif relocation_type == 0x03 and symbol[2] == "STT_FUNC":
                type = 1  # func pointer
            elif relocation_type == 0x03:
                type = 2  # data under function
            elif relocation_type == 0x60:
                type = 3  # data of some info, like "heap"
            elif relocation_type == 0x0A:
                type = 4  # func call
                func_id1 = get_function_id(functions_info, offset)
                func_id2 = get_function_id(functions_info, value)
            elif relocation_type == 0x2F:
                type = 5  # absoultably address: movw
                func_id1 = get_function_id(functions_info, offset)
                func_id2 = get_function_id(functions_info, value)
            elif relocation_type == 0x30:
                type = 6  # absoulately address: movt
                func_id1 = get_function_id(functions_info, offset)
                func_id2 = get_function_id(functions_info, value)
            else:
                print(f"error occur: the symbol type not found: {name}")

            info.append([offset, value, type,  func_id1, func_id2, name])
    return info

# 生成函数信息
def generate_functions_info(symbol_tables):
    functions_info = []
    for symbol in symbol_tables:
        if symbol[2] == "STT_FUNC":
            functions_info.append(
                #  + sections_info[symbol[3]][0]
                [symbol[0], symbol[1], symbol[4]]
            )
        if symbol[4]=="trampoline_A_B":
            global tra_A_B_addr
            tra_A_B_addr = symbol[0]
            # + sections_info[symbol[3]][0]
            global tra_A_B_size
            tra_A_B_size = symbol[1]
        if symbol[4]=="trampoline_B_A":
            global tra_B_A_addr
            tra_B_A_addr = symbol[0]
            # + sections_info[symbol[3]][0]
            global tra_B_A_size
            tra_B_A_size = symbol[1]
        if symbol[4]=="trampoline_blx":
            global trampoline_blx_addr
            trampoline_blx_addr = symbol[0]
            # + sections_info[symbol[3]][0]
            global trampoline_blx_size
            trampoline_blx_size = symbol[1]

    return functions_info

def output_trampoline():
    with open(output_trampline_info_path, "w") as f:
        f.write('#include "trampoline.h"\n')
        f.write("\n")
        f.write('region_t old_trampline_section = {' + hex(tra_section_addr) + ', ' + hex(tra_section_size)+ '};\n')
        f.write('region_t old_trampline_a2b = {' + hex(tra_A_B_addr) + ', ' + hex(tra_A_B_size)+ '};\n')
        f.write('region_t old_trampline_b2a = {' + hex(tra_B_A_addr) + ', ' + hex(tra_B_A_size)+ '};\n')
        f.write('region_t old_trampline_blx = {' + hex(trampoline_blx_addr) + ', ' + hex(trampoline_blx_size)+ '};\n')
        f.write('region_t old_handler_section = {' + hex(handler_section_addr) + ', ' + hex(handler_section_size)+ '};\n')

# 输出 copy_table 和 zero_table 信息
def output_read_flash(symbol_tables):
    with open(output_read_flash_path, "w") as f:
        f.write('#include "read_flash.h"\n')
        for symbol in symbol_tables:
            if symbol[4] == "__copy_table_start__":
                f.write('copy_region_t new_copy_table = {' + hex(symbol[0]) + ', ');
            if symbol[4] == "__copy_table_end__":
                f.write(hex(symbol[0]) + ', 0};\n')
            if symbol[4] == "__zero_table_start__":
                f.write('copy_region_t new_zero_table = {' + hex(symbol[0]) + ', ');
            if symbol[4] == "__zero_table_end__":
                f.write(hex(symbol[0]) + ', 0};\n')
            if symbol[4] == "MSIRangeTable":
               f.write('copy_region_t new_MSIRangeTable = {' + hex(symbol[0]) + ', ' + hex(symbol[0] + symbol[1]) + ', 0};\n')
            if symbol[4] == "AHBPrescTable":
                f.write('copy_region_t new_AHBPrescTable = {' + hex(symbol[0]) + ', '  + hex(symbol[0] + symbol[1]) + ', 0};\n')


def generate(elf_filename):
    with open(elf_filename, "rb") as f:

        elf_file = ELFFile(f)

        symbol_tables = parse_symbol_table(elf_file)
        sections_info = parse_section_table(elf_file)
        functions_info = generate_functions_info(symbol_tables)
        output_functions_info(functions_info)
        info = generate_relocation_info(elf_file, symbol_tables, functions_info)
        output_relocation_info(info)
        # output_trampoline()
        output_read_flash(symbol_tables)

generate(elf_path)