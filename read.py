import subprocess
import sys

# 获取命令行参数
arguments = sys.argv

command = hex(int(arguments[1])+1)[2:]

# 要执行的bash命令
bash_command = "readelf -s ./build/bin/ns_app.elf | grep " + command


result = subprocess.run(bash_command, shell=True, stdout=subprocess.PIPE, text=True)
print(result.stdout)