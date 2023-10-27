from elftools.elf.elffile import ELFFile

address = 0
offset = 0


def write_extracted_info(elf_file_path, dst_file_path):
    # 以二进制模式打开文件
    with open(elf_file_path, "rb") as file:
        # 使用 ELFFile 类解析文件
        elf = ELFFile(file)
        address = elf.get_section_by_name(".text").header["sh_addr"]
        offset = elf.get_section_by_name(".text").header["sh_offset"]
    # 以文本模式打开文件
    with open(dst_file_path, "w") as file:
        # 写入头文件
        file.write("#ifndef EXTRACTED_INFO_H\n")
        file.write("#define EXTRACTED_INFO_H\n")
        file.write("#include <stdint.h>\n")
        # 写入地址
        file.write("uint32_t __text_address__=0x%x;\n" % address)
        # 写入偏移量
        file.write("uint32_t __text_offset__=0x%x;\n" % offset)
        # 写入尾文件
        file.write("#endif\n")


# 用你的 ELF 文件路径替换 'your_file.elf'
write_extracted_info(
    "build/bin/ns_app.elf",
    "platform/ext/target/stm/aslr_freertos_nsapp/copytext/extracted_info.h",
)
