import re


def find_just_smaller(nums, target):
    """
    在一个递增的列表中找到刚好小于给定数值target的元素。
    如果这个元素存在，返回这个元素；否则返回None。
    """
    # 如果列表为空或者目标值小于等于列表中的第一个元素，则无法找到符合条件的元素
    if not nums or target <= nums[0]:
        return None

    for i in range(len(nums) - 1):
        # 检查当前元素是否小于目标值且下一个元素大于等于目标值
        if nums[i] < target <= nums[i + 1]:
            return nums[i]

    # 如果目标值大于列表中的所有元素，返回列表的最后一个元素
    if target > nums[-1]:
        return nums[-1]

    return None


def extract_func(asm_str):
    pattern = r"\b[0-9a-fA-F]+\s+<[^>]+>:"

    matches = re.finditer(pattern, asm_str)
    fn_list = []
    bl_map = {}
    ldr_map = {}
    for match in matches:
        fn_list.append(match.group()[1:7])
        bl_map[match.group()[1:7]] = []
        ldr_map[match.group()[1:7]] = []

    pattern = r"\b[0-9a-fA-F]+:\s+[0-9a-fA-F]+\s+[0-9a-fA-F]+\s+bl\s+0x[0-9a-fA-F]+"

    matches = re.finditer(pattern, asm_str)

    for match in matches:
        bl_addr = match.group()[0:7]
        dst_addr = match.group()[-7:]
        func = find_just_smaller(fn_list, bl_addr)
        if func:
            bl_map[func].append([bl_addr, dst_addr])

    pattern = r"\b[0-9a-fA-F]+:\s+[0-9a-fA-F]+\s+ldr\s+r0,\s+\[pc,\s+#0x[0-9a-fA-F]+\]\s+@\s+0x[0-9a-fA-F]+"

    matches = re.finditer(pattern, asm_str)

    ldr_dst_list = []
    for match in matches:
        ldr_addr = match.group()[0:7]
        dst_addr = match.group()[-7:]

        func = find_just_smaller(fn_list, ldr_addr)
        if func:
            ldr_map[func].append([ldr_addr, dst_addr])
            ldr_dst_list.append([ldr_addr, dst_addr])
    func_info = ""
    func_info += "#include <stdio.h>\n"

    func_info += "uint32_t func_list[{0}]={{".format(len(fn_list))
    for fn in fn_list:
        func_info += "0x" + fn + ","
    func_info += "};\n"

    func_info += "uint32_t ldr_list[{0}]={{".format(len(ldr_dst_list) * 2)
    for ldr_dst in ldr_dst_list:
        func_info += "0x" + ldr_dst[0] + ",0x" + ldr_dst[1] + ","
    func_info += "};\n"

    write_func_info(
        "platform/ext/target/stm/aslr_freertos_nsapp/loader/func_info.c", func_info
    )

    write_func_info(
        "platform/ext/target/stm/aslr_freertos_nsapp/loader/func_info.h",
        "#include <stdint.h>\nuint32_t func_list[{0}];\nuint32_t ldr_list[{1}];\n".format(
            len(fn_list), len(ldr_dst_list) * 2
        ),
    )


def write_func_info(path, func_info):
    with open(path, "w") as file:
        file.write(func_info)


import subprocess

filename = "build/bin/ns_app.elf"

command = ["llvm-objdump-17", "-S", filename]

# 使用subprocess.run执行命令
result = subprocess.run(command, capture_output=True, text=True)

# 检查命令是否成功执行
if result.returncode == 0:
    extract_func(result.stdout)
else:
    # 如果有错误，打印错误信息（stderr）
    print("错误：")
    print(result.stderr)
