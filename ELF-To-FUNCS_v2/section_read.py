import os
import sys
import subprocess

heads1 = [
"#ifndef __ASLR_CONFIG_H__",
"#define __ASLR_CONFIG_H__",
"",
"typedef enum aslr_region_type {",
"    ASLR_REGION_SECURE_TYPE,",
"    ASLR_REGION_PRIV_TYPE,",
"    ASLR_REGION_SYSCALL_TYPE,",
"    ASLR_REGION_UNPRIV_TYPE,",
"    ASLR_REGION_ERROR_TYPE,",
"} aslr_region_type_t;",
"",
]

heads2 = [
"#ifndef RANDOM_REGION",
"#define RANDOM_REGION",
"",
]

tails1 = [
"#define ALSR_FLASH_UNEXECUTABLE_REGION_START ASLR_FLASH_PRIV_REGION_START",
"#define ALSR_FLASH_UNEXECUTABLE_REGION_END ASLR_FLASH_UNPRIV_REGION_END",
"",
"#define ASLR_RAM_SECURE_SERVICE1_REGION_START 0x30025000",
"#define ASLR_RAM_SECURE_SERVICE1_REGION_SIZE 0x00001000",
"#define ASLR_RAM_SECURE_SERVICE1_REGION_END  \\",
"    (ASLR_RAM_SECURE_SERVICE1_REGION_START + \\",
"     ASLR_RAM_SECURE_SERVICE1_REGION_SIZE - 1)",
"",
]

tails2 = [
"#define ASLR_RAM_PRIV_REGION_START 0x20010000",
"#define ASLR_RAM_PRIV_REGION_SIZE 0x00008000",
"#define ASLR_RAM_PRIV_REGION_END \\",
"    (ASLR_RAM_PRIV_REGION_START + ASLR_RAM_PRIV_REGION_SIZE - 1)",
"",
"#define ASLR_RAM_SYSCALL_REGION_START (ASLR_RAM_PRIV_REGION_END + 1)",
"#define ASLR_RAM_SYSCALL_REGION_SIZE 0x00004000",
"#define ASLR_RAM_SYSCALL_REGION_END \\",
"    (ASLR_RAM_SYSCALL_REGION_START + ASLR_RAM_SYSCALL_REGION_SIZE - 1)",
"",
"#define ASLR_RAM_UNPRIV_REGION_START (ASLR_RAM_SYSCALL_REGION_END + 1)",
"#define ASLR_RAM_UNPRIV_REGION_SIZE 0x00010000",
"#define ASLR_RAM_UNPRIV_REGION_END \\",
"    (ASLR_RAM_UNPRIV_REGION_START + ASLR_RAM_UNPRIV_REGION_SIZE - 1)",
"",
"#endif"
]

def get_section_size(section_name, elfpath):
    try:
        os.system('readelf -S ' + elfpath + '| grep -w ' + section_name + ' > ./ELF_debug_sections.txt')
    except Exception as e:
        print('[INFO]Command Error:{}'.format(e))
        sys.exit(0)
    with open('./ELF_debug_sections.txt','r') as Ep:
        section_lines = Ep.readlines()
        for sl in section_lines:
            if sl.find(section_name) >= 0:
                start_address = sl.split()[3]
                size_address = sl.split()[5]
                start_address_int = int(start_address, 16)
                size_int = int(size_address, 16)

                end_address_int = start_address_int + size_int - 1
                # end_address = hex(end_address_int)[2:]
                return [start_address_int, end_address_int]
    return [0, 0]


def extract_symbol_address(elf_file, symbol):
    result = subprocess.run(["readelf", "-s", elf_file], capture_output=True, text=True)
    lines = result.stdout.splitlines()
    for line in lines:
        if symbol in line:
            parts = line.split()
            address = parts[1]
            return int(address, 16)
    return None

def generate_flash_config(elf_file, output_file, secure_start_address, secure_end_address):
    handler_start_address = extract_symbol_address(elf_file, "__handler_functions_start")
    handler_end_address = extract_symbol_address(elf_file, "__handler_functions_end__")
    privileged_start_address = extract_symbol_address(elf_file, "__privileged_functions_st")
    privileged_end_address = extract_symbol_address(elf_file, "__privileged_functions_en")
    systcall_start_address = extract_symbol_address(elf_file, "__syscalls_flash_start__")
    systcall_end_address = extract_symbol_address(elf_file, "__syscalls_flash_end__")
    unprivileged_start_address = extract_symbol_address(elf_file, "__unprivileged_flash_star")
    nprivileged_end_address = extract_symbol_address(elf_file, "__unprivileged_flash_end_")

    with open(output_file, "w") as cpp_file:
        for head in heads1:
            cpp_file.write(head + "\n")
        cpp_file.write("#define ASLR_FLASH_SECURE_SERVICE1_REGION_START 0x{:x}\n".format(secure_start_address))
        cpp_file.write("#define ASLR_FLASH_SECURE_SERVICE1_REGION_END 0x{:x}\n".format(secure_end_address))
        cpp_file.write("\n")
        cpp_file.write("#define ASLR_FLASH_HANDLER_REGION_START 0x{:x}\n".format(handler_start_address))
        cpp_file.write("#define ASLR_FLASH_HANDLER_REGION_END 0x{:x}\n".format(handler_end_address))
        cpp_file.write("\n")
        cpp_file.write("#define ASLR_FLASH_PRIV_REGION_START 0x{:x}\n".format(privileged_start_address))
        cpp_file.write("#define ASLR_FLASH_PRIV_REGION_END 0x{:x}\n".format(privileged_end_address))
        cpp_file.write("\n")
        cpp_file.write("#define ASLR_FLASH_SYSCALL_REGION_START 0x{:x}\n".format(systcall_start_address))
        cpp_file.write("#define ASLR_FLASH_SYSCALL_REGION_END 0x{:x}\n".format(systcall_end_address))
        cpp_file.write("\n")
        cpp_file.write("#define ASLR_FLASH_UNPRIV_REGION_START 0x{:x}\n".format(unprivileged_start_address))
        cpp_file.write("#define ASLR_FLASH_UNPRIV_REGION_END 0x{:x}\n".format(nprivileged_end_address))
        cpp_file.write("\n")
        for tail in tails1:
            cpp_file.write(tail + "\n")
        for tail in tails2:
            cpp_file.write(tail + "\n")

def generate_ram_config(output_file):
    with open(output_file, "w") as cpp_file:
        for head in heads2:
            cpp_file.write(head + "\n")
        for tail in tails2:
            cpp_file.write(tail + "\n")
