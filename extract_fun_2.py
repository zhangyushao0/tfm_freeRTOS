from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from elftools.elf.sections import SymbolTableSection

ns_start = 0x8055200


def process_relocation_table(elf_file):
    func_addrs = []
    reloc_entries = []

    for section in elf_file.iter_sections():
        if isinstance(section, RelocationSection):
            symtab = elf_file.get_section(section["sh_link"])
            for relocation in section.iter_relocations():
                symbol = symtab.get_symbol(relocation["r_info_sym"])
                if (
                    symbol["st_info"]["type"] == "STT_FUNC"
                    and relocation["r_info_type"] == 3
                ):
                    # 计算重定位的绝对地址
                    reloc_addr = section["sh_addr"] + relocation["r_offset"]
                    # 计算目标符号的绝对地址
                    symbol_addr = symbol["st_value"]
                    if symbol["st_shndx"] != "SHN_ABS":
                        symbol_section = elf_file.get_section(symbol["st_shndx"])
                        symbol_addr += symbol_section["sh_addr"]

                    # 查找重定位所属的函数
                    containing_func = None
                    for sym in symtab.iter_symbols():
                        if (
                            sym["st_info"]["type"] == "STT_FUNC"
                            and sym["st_value"]
                            <= reloc_addr
                            < sym["st_value"] + sym["st_size"]
                        ):
                            containing_func = sym
                            break

                    if containing_func:
                        # 计算包含函数的绝对地址
                        func_addr = containing_func["st_value"]
                        func_section = elf_file.get_section(containing_func["st_shndx"])
                        func_addr += func_section["sh_addr"]

                        if func_addr not in func_addrs:
                            func_addrs.append(func_addr)

                        reloc_entries.append(
                            (func_addr, ns_start + reloc_addr, symbol_addr - 1)
                        )
                    else:
                        reloc_entries.append((0, ns_start + reloc_addr, symbol_addr))

    # 生成C代码
    with open("reloc_info.c", "w") as f:
        f.write("#include <stdint.h>\n\n")

        # 写入函数地址数组
        f.write("uint32_t func_addrs[] = {\n")
        for addr in func_addrs:
            f.write(f"    0x{addr:08x},\n")
        f.write("};\n\n")

        # 写入重定位结构体数组
        f.write("struct reloc_entry {\n")
        f.write("    uint32_t func_addr;\n")
        f.write("    uint32_t dst_addr;\n")
        f.write("    uint32_t src_addr;\n")
        f.write("};\n\n")

        f.write("struct reloc_entry reloc_entries[] = {\n")
        for entry in reloc_entries:
            f.write(
                f"    {{ 0x{entry[0]:08x}, 0x{entry[1]:08x}, 0x{entry[2]:08x} }},\n"
            )
        f.write("};\n")


# 打开ELF文件
with open("build_re/bin/ns_app.elf", "rb") as f:
    elf = ELFFile(f)
    process_relocation_table(elf)
