import os
import sys
headers = ["#ifndef __ASLR_CONFIG_H__", "#define __ASLR_CONFIG_H__", "typedef enum aslr_region_type {", "    ASLR_REGION_SECURE_TYPE,", "    ASLR_REGION_PRIV_TYPE,", "    ASLR_REGION_SYSCALL_TYPE,", "    ASLR_REGION_UNPRIV_TYPE,", "    ASLR_REGION_ERROR_TYPE,", "} aslr_region_type_t;"]

tails = ["#define ASLR_RAM_SECURE_SERVICE1_REGION_START 0x20006000", "#define ASLR_RAM_SECURE_SERVICE1_REGION_END 0x20006999", "#define ASLR_RAM_PRIV_REGION_START 0x20007000", "#define ASLR_RAM_PRIV_REGION_END 0x2000afff", "#define ASLR_RAM_SYSCALL_REGION_START 0x2000b000", "#define ASLR_RAM_SYSCALL_REGION_END 0x2000cfff", "#define ASLR_RAM_UNPRIV_REGION_START 0x2000d000", "#define ASLR_RAM_UNPRIV_REGION_END 0x2000ffff", "#endif"]



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

# def get_section_size(section_name):
#     with open('./sections.txt','r') as Ep:
#         section_lines = Ep.readlines()
#         for sl in section_lines:
#             if sl.find(section_name) >= 0:
#                 start_address = sl.split()[2]
#                 size_address = sl.split()[3]
#                 start_address_int = int(start_address, 16)
#                 size_int = int(size_address, 16)

#                 end_address_int = start_address_int + size_int - 1
#                 # end_address = hex(end_address_int)[2:]
#                 return [start_address_int, end_address_int]

# def init(elfpath, filepath):
#     try:
#         os.system('readelf -s ' + elfpath + ' | grep syscall > ./sections.txt')
#         os.system('readelf -s ' + elfpath + ' | grep privileged_flash >> ./sections.txt')
#         os.system('readelf -s ' + elfpath + ' | grep unprivileged_flash >> ./sections.txt')
#     except Exception as e:
#         print('[INFO]Command Error:{}'.format(e))

#     with open(filepath,'w') as fp:
#         for h in headers:
#             fp.write(h+'\n')
#         [start, end] = get_section_size("syscall")