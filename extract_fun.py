from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from elftools.elf.sections import SymbolTableSection

reloaction_section_list = []
symbol_section_list = []

ns_start = 0x8055000


def process_relocation_table(elf_file):
    for section in elf_file.iter_sections():
        if isinstance(section, RelocationSection):
            reloaction_section_list.append(section)
        if isinstance(section, SymbolTableSection):
            symbol_section_list.append(section)
    for rel_section in reloaction_section_list:
        for rel in rel_section.iter_relocations():
            for symbol_section in symbol_section_list:
                for symbol in symbol_section.iter_symbols():
                    if (
                        rel["r_info_type"] == 3
                        and rel.entry["r_info_sym"] == symbol.entry["st_name"]
                    ):
                        rel_address = (
                            rel.entry["r_offset"] + section["sh_addr"] + ns_start
                        )
                        print(f"Relocation: {rel_address:08x} Symbol: {symbol.name}")


# 打开ELF文件
with open("build_re/bin/ns_app.elf", "rb") as f:
    elf = ELFFile(f)
    process_relocation_table(elf)
