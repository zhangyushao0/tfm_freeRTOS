# 打开文件并读取内容

array = ["beebs_cnt", "beebs_compress", "beebs_cover", "beebs_fdct", "beebs_fibcall", "beebs_levenshtein", "beebs_ndes", "beebs_ns", "beebs_prime", "beebs_tarai", "embench_aha-mont64", "embench_nsichneu", "embench_primecount", "embench_slre", "embench_matmult-int", "embench_statemate", "stm32example_GPIOEXTI", "stm32example_GPIOIOToggle", "stm32example_RCCClockConfig"] # "embench_picojpeg",

with open('data.txt', 'r') as file:
    lines = file.readlines()

# 遍历每一行，提取包含'r3'、'r4'、'r5'、'r6'的行
result = []
for line in lines:
    if 'r3' in line or 'r4' in line or 'r5' in line:
        result.append(line.strip())

i = 0
res = []
while i < len(result):
    ans = []
    ans.append(array[i // 3])
    for j in range(0, 3):
        # 将 result[i+j] 按空格分割，提取第二个元素
        ans.append(result[i + j].split()[2])
    res.append(ans)
    i += 3

with open('../data/data.csv', 'w') as file:
    for r in res:
        file.write(r[0] + "," + r[1] + "," + r[2] + "," + r[3] + "\n")

