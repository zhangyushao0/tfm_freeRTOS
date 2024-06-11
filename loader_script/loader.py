#!/usr/bin/python3
from elftools.elf.elffile import ELFFile

project_path = '/home/han/srtp/tfm_freeRTOS'

elf_path = project_path + "/build/bin/ns_app.elf"
output_relocation_info_path = (
    project_path + "/platform/ext/target/stm/aslr_freertos_nsapp/loader/src/relocation.c"
)
output_functions_info_path = (
    project_path + "/platform/ext/target/stm/aslr_freertos_nsapp/loader/src/func.c"
)
output_sections_info_path = (
   project_path + "/platform/ext/target/stm/aslr_freertos_nsapp/loader/src/loader_region.c"
)
need_relocation_secions = ["text", "unprivileged_functions", "privileged_functions", "freertos_system_calls"]

# code_start = 0x08005000

def get_sections(elf_file, type):
    rel_sections = []

    for need_section in need_relocation_secions:
        for section in elf_file.iter_sections():
            if type == 1: name = ".rel." + need_section
            else: name = "." + need_section
            if section.name == name:
                rel_sections.append(section)

    if rel_sections == []:
        raise Exception("Relocation table section not found.")
    return rel_sections

def get_function_id(functions_info, addr):
    for i in range(len(functions_info)):
        if addr >= functions_info[i][0] - 1 and addr < functions_info[i][0] + functions_info[i][1] - 1:
            return i
    return -1

def output_sections_info(sections_info):
    with open(output_sections_info_path, 'w') as f:
        f.write('#include "loader_region.h"\n')
        f.write("\n")
        f.write('region_t dst_region[4] = {\n')
        f.write('    {0x0, 0x0},\n')
        f.write('    {0x0, 0x0},\n')
        f.write('    {0x0, 0x0},\n')
        f.write('    {0x0, 0x0},\n')
        f.write('};\n')
        f.write('region_t src_region[4] = {\n')
        for section in sections_info:
            f.write('    {')
            f.write(hex(section[0]) + ', ' + hex(section[1]))
            f.write('}, \n')
        f.write('};\n')

def output_relocation_info(info, section_arr):
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
        f.write("\n")
        f.write("uint32_t index_table_size = ")
        f.write(str(len(section_arr)) + ";\n")
        f.write("\n")
        f.write("region_t index_table[")
        f.write(str(len(section_arr)))
        f.write("] = {\n")
        for entry in section_arr:
            f.write(
                "    {"
                + str(entry[0])
                + ", "
                + str(entry[1])
                + "},"
                + "\n"
            )
        f.write("};\n")

def output_functions_info(functions_info, sections):
    with open(output_functions_info_path, "w") as f:
        f.write('#include "func.h"\n')
        f.write("\n")
        f.write("uint32_t func_info_size = ")
        f.write(str(len(functions_info)) + ";\n")
        f.write("\n")
        f.write("func_info_t func_info[")
        f.write(str(len(functions_info)))
        f.write("] = {\n")
        for addr, size, name, flag in functions_info:
            type = -1
            for id, section in enumerate(sections):
                # print(hex(section.header.sh_addr), hex(section.header.sh_size), section.name)
                if addr >= section[0] and addr < section[0] + section[1]:
                    type = id
                    break
            if type == -1:
                print(f"error occur: the function {name} not in any section")
            if flag == 1:
                type |= 0x100
            f.write(
                "    {"
                + hex(addr)
                + ", "
                + str(size)
                + ", "
                + str(type)
                + "},"
                + "  //"
                + name
                + "\n"
            )
        f.write("};\n")

def generate_sections_arr(relocation_info):
    arr = []
    for index, entry in enumerate(relocation_info):
        if entry[5] == "__unprivileged_flash_start__":
            arr.append([index, 1])
        elif entry[5] == "__unprivileged_flash_end__":
            arr.append([index, 1 | 0x100])
        elif entry[5] == "__privileged_functions_start__":
            arr.append([index, 2])
        elif entry[5] == "__privileged_functions_end__":
            arr.append([index, 2 | 0x100])
        elif entry[5] == "__syscalls_flash_start__":
            arr.append([index, 3])
        elif entry[5] == "__syscalls_flash_end__":
            arr.append([index, 3 | 0x100])
    return arr

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

# 生成 section 信息
def getnerate_sections_info(elf_file):
    sections = get_sections(elf_file, 0)
    sections_info = []
    for section in sections:
        sections_info.append([section.header.sh_addr, section.header.sh_size, section.name])
    return sections_info

# 生成 relocation 信息
def generate_relocation_info(elf_file, symbol_tables, functions_info):
    # 获取需要重定向的 section 对应的 section 对象
    rel_sections = get_sections(elf_file, 1)
    info = []

    # 遍历所有 section 对象
    for rel_section in rel_sections:
        # section_addr = sections_info[index][0]
        for relocation in rel_section.iter_relocations():
            symbol = symbol_tables[relocation["r_info_sym"]] # 重定向的符号
            value = symbol[0] # 重定向后的值
            offset = relocation["r_offset"] # flash 上的地址
            relocation_type = relocation["r_info_type"]
            type = -1
            name = symbol[4]
            func_id1 = -1
            func_id2 = -1
            if relocation_type == 0x02 and symbol[2] != "STT_SECTION":
                type = 0  # exception entr
            elif relocation_type == 0x03 and symbol[2] == "STT_FUNC":
                type = 1  # func pointer
            elif relocation_type == 0x03:
                type = 2  # data under function
            elif relocation_type == 0x60:
                type = 3  # data of some info, like "heap"
            elif relocation_type == 0x0A:
                type = 4  # func call
            elif relocation_type == 0x2F:
                type = 5  # absoultably address: movw
            elif relocation_type == 0x30:
                type = 6  # absoulately address: movt
            else:
                print(f"error occur: the symbol type not found: {name}")
                continue
            # print(f"offset: {hex(offset)}, value: {hex(value)}, type: {type}, func_id1: {func_id1}, func_id2: {func_id2}, name: {name}")
            func_id1 = get_function_id(functions_info, offset)
            func_id2 = get_function_id(functions_info, value)
            info.append([offset, value, type, func_id1, func_id2, name])
    return info

# 生成函数信息
def generate_functions_info(symbol_tables):
    functions_info = []
    for symbol in symbol_tables:
        if symbol[2] == "STT_FUNC" or ():
            functions_info.append(
                #  + sections_info[symbol[3]][0]
                [symbol[0], symbol[1], symbol[4], 0]
            )
        elif symbol[2] == 'STT_OBJECT' and int(symbol[0]) > 0x08000000 and int(symbol[0]) < 0x0b000000:
            # print(hex(symbol[0]), symbol[4])
            functions_info.append(
                [symbol[0], symbol[1], symbol[4], 1]
            )
    functions_info.sort(key=lambda x: x[0])
    return functions_info

def generate(elf_filename):
    with open(elf_filename, "rb") as f:
        elf_file = ELFFile(f)
        symbol_tables = parse_symbol_table(elf_file)
        functions_info = generate_functions_info(symbol_tables)
        relocation_info = generate_relocation_info(elf_file, symbol_tables, functions_info)
        sections_info = getnerate_sections_info(elf_file)
        section_arr = generate_sections_arr(relocation_info)
        output_sections_info(sections_info)
        output_functions_info(functions_info, sections_info)
        output_relocation_info(relocation_info, section_arr)

generate(elf_path)
