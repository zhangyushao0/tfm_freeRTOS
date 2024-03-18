import re

relocation_path = 'platform/ext/target/stm/aslr_freertos_nsapp/loader/script/relocation.txt'
otutput_path = 'platform/ext/target/stm/aslr_freertos_nsapp/loader/src/relocation.c'
# symbol_path = 'platform/ext/target/stm/aslr_freertos_nsapp/loader/symbol_table'

text_start = 0x08055000
data_start = 0x20000100

def read_relocation_file(text_start = text_start):
    with open(relocation_path, 'r') as relocation_file:
        relocation_file.readline()
        line = relocation_file.readline()
        numbers = re.findall(r'\d+', line)
        numbers = [int(num) for num in numbers][2]
        relocation_file.readline()
        with open(otutput_path, 'w') as output_file:
            output_file.write("#include \"relocation.h\"\n")
            output_file.write("uint32_t table_size = ")
            output_file.write(str(numbers) + ";\n")
            output_file.write("relocation_info_t relocation_info[")
            output_file.write(str(numbers))
            output_file.write("] = {\n")
            for i in range(0, numbers):
                line = relocation_file.readline().split()
                address = hex(int(line[0], 16) + text_start)
                value = hex(int(line[3], 16))
                if line[1][-2:] == '02':
                    value = hex(int(line[3], 16) + text_start)
                    output_file.write('    {' + address + ', ' + value + ', 0},\n')
                elif line[1][-2:] == '03' or line[1][-2:] == '60':
                    value =  hex(int(line[3], 16) + data_start)
                    output_file.write('    {' + address + ', ' + value + ', 1},\n')
                else:
                    value = hex(int(line[3], 16)+ text_start)
                    output_file.write('    {' + address + ', ' + value + ', 2},\n')
            output_file.write("};\n")

read_relocation_file()

