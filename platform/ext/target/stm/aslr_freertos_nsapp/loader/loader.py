import re

relocation_path = 'platform/ext/target/stm/aslr_freertos_nsapp/loader/relocation.txt'
otutput_path = 'platform/ext/target/stm/aslr_freertos_nsapp/loader/relocation.c'
symbol_path = 'platform/ext/target/stm/aslr_freertos_nsapp/loader/symbol_table'

text_starta = 0x08055000
text_startb = 0x08055960
data_start = 0x20000100

# symbol_dic = {}

# with open(symbol_path, 'r') as symbol_file:
#     symbol_file.readline()
#     line = symbol_file.readline()
#     numbers2 = re.findall(r'\d+', line)
#     numbers2 = [int(num) for num in numbers2][0]
#     symbol_file.readline()
#     for i in range(0, numbers2):
#         line = symbol_file.readline().split()
#         symbol_dic[int(line[0][:-1])] = line[3]

# 读取文本文件

def get_size():
    with open(relocation_path, 'r') as relocation_file:
        relocation_file.readline()
        line = relocation_file.readline()
        numbers = re.findall(r'\d+', line)
        number1 = [int(num) for num in numbers][3]
        relocation_file.readline()
        for i in range(0, number1):
            line = relocation_file.readline()
        relocation_file.readline()
        line = relocation_file.readline()
        numbers = re.findall(r'\d+', line)
        number2 = [int(num) for num in numbers][3]
        relocation_file.readline()
        return number1 + number2

def read_relocation_file():
    with open(relocation_path, 'r') as relocation_file:
        relocation_file.readline()
        line = relocation_file.readline()
        numbers = re.findall(r'\d+', line)
        numbers = [int(num) for num in numbers][3]
        relocation_file.readline()
        with open(otutput_path, 'w') as output_file:
            output_file.write("#include \"relocation.h\"\n")
            output_file.write("uint32_t table_size = ")
            output_file.write(str(get_size()) + ";\n")
            output_file.write("relocation_info_t relocation_info[")
            output_file.write(str(get_size()))
            output_file.write("] = {\n")
            for i in range(0, numbers):
                line = relocation_file.readline().split()
                address = hex(int(line[0], 16) + text_starta)
                value = hex(int(line[3], 16))
                # if symbol_dic[(int(line[1], 16) >> 8)] == "FUNC":
                #     value = hex(int(line[3], 16) + text_start)
                #     output_file.write('    {' + address + ', ' + value + ', 0},\n')
                # elif symbol_dic[(int(line[1], 16) >> 8)] == "OBJECT":
                #     value =  hex(int(line[3], 16) + data_start)
                #     output_file.write('    {' + address + ', ' + value + ', 1},\n')
                # else :
                #     value = hex(int(line[3], 16))
                #     output_file.write('    {' + address + ', ' + value + ', 2},\n')
                if line[1][-2:] == '02':
                    value = hex(int(line[3], 16) + text_starta)
                    output_file.write('    {' + address + ', ' + value + ', 0},\n')
                elif line[1][-2:] == '03' or line[1][-2:] == '60':
                    value =  hex(int(line[3], 16) + data_start)
                    output_file.write('    {' + address + ', ' + value + ', 1},\n')
                else:
                    value = int(line[3], 16)
                    if value == 0x01 or value == 0x41:
                        value = hex(value + text_startb)
                    else :
                        value = hex(value + text_starta)
                    output_file.write('    {' + address + ', ' + value + ', 2},\n')
            relocation_file.readline()
            line = relocation_file.readline()
            numbers = re.findall(r'\d+', line)
            numbers = [int(num) for num in numbers][3]
            relocation_file.readline()
            for i in range(0, numbers):
                line = relocation_file.readline().split()
                address = hex(int(line[0], 16) + text_startb)
                value = hex(int(line[3], 16))
                if line[1][-2:] == '02':
                    value = hex(int(line[3], 16) + text_startb)
                    output_file.write('    {' + address + ', ' + value + ', 0},\n')
                elif line[1][-2:] == '03' or line[1][-2:] == '60':
                    value =  hex(int(line[3], 16) + data_start)
                    output_file.write('    {' + address + ', ' + value + ', 1},\n')
                else:
                    value = hex(int(line[3], 16)+ text_startb)
                    output_file.write('    {' + address + ', ' + value + ', 2},\n')
            output_file.write("};\n")
read_relocation_file()

# def read_relocation_file(text_start):
#     with open(relocation_path, 'r') as relocation_file:
#         relocation_file.readline()
#         line = relocation_file.readline()
#         numbers = re.findall(r'\d+', line)
#         numbers = [int(num) for num in numbers][3]
#         relocation_file.readline()
#         with open(otutput_path, 'w') as output_file:
#             output_file.write("#include \"relocation.h\"\n")
#             output_file.write("uint32_t table_size = ")
#             output_file.write(str(numbers) + ";\n")
#             output_file.write("relocation_info_t relocation_info[")
#             output_file.write(str(numbers))
#             output_file.write("] = {\n")
#             for i in range(0, numbers):
#                 line = relocation_file.readline().split()
#                 address = hex(int(line[0], 16) + text_start)
#                 value = hex(int(line[3], 16))
#                 if line[1][-2:] == '02':
#                     value = hex(int(line[3], 16) + text_start)
#                     output_file.write('    {' + address + ', ' + value + ', 0},\n')
#                 elif line[1][-2:] == '03' or line[1][-2:] == '60':
#                     value =  hex(int(line[3], 16) + data_start)
#                     output_file.write('    {' + address + ', ' + value + ', 1},\n')
#                 else:
#                     value = hex(int(line[3], 16)+ text_start)
#                     output_file.write('    {' + address + ', ' + value + ', 2},\n')
#             output_file.write("};\n")