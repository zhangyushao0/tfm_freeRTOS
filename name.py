import subprocess

# 要执行的bash命令
bash_command = "readelf -s ./build/bin/ns_app.elf | grep "
# 打开输入文件
with open('input.txt', 'r') as input_file:
    # 读取每一行
    lines = input_file.readlines()

# 将10进制转为16进制
hex_lines = [hex(int(line.strip()) + 1)[2:] for line in lines]

# 打开输出文件
with open('output.txt', 'w') as output_file:
    # 将16进制写入输出文件
    for hex_line in hex_lines:
        command = bash_command + hex_line
        result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
        output_file.write(result.stdout)
