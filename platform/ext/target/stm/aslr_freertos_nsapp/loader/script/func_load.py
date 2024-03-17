import re

func_info_path = 'platform/ext/target/stm/aslr_freertos_nsapp/loader/script/func_info.txt'
otutput_path = 'platform/ext/target/stm/aslr_freertos_nsapp/loader/src/func.c'

text_start = 0x08055000

def read_relocation_file(text_start = text_start):
    line_count = 0
    with open(func_info_path, 'r') as func_info_file:
        for line in func_info_file:
            line_count += 1
    # print(line_count)
    with open(otutput_path, 'w') as output_file:
        output_file.write("#include \"func.h\"\n")
        output_file.write("uint32_t func_info_size = ")
        output_file.write(str(line_count) + ";\n")
        output_file.write("func_info_t func_info[")
        output_file.write(str(line_count))
        output_file.write("] = {\n")
        with open(func_info_path, 'r') as func_info_file:
            for line in func_info_file:
                line = line.split()
                address = hex(int(line[1], 16) + text_start)
                value = hex(int(line[2], 16))
                output_file.write('    {' + address + ', ' + value + ', 0},\n')
        output_file.write("};\n")
read_relocation_file()