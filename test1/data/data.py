import csv

# 打开三个CSV文件
with open('data.csv', 'r') as file1, open('data_n.csv', 'r') as file2, open('data_switch.csv', 'r') as file3:
    reader1 = csv.reader(file1)
    reader2 = csv.reader(file2)
    reader3 = csv.reader(file3)

    # 逐行读取三个文件
    with open('res.md', 'w') as mdfile:
        mdfile.write('| 程序名 | 正常 | 开启 dwt 无切换 | 开销 | loader 时间 | 切换 | 开销 | loader 时间 | trampline 次数 |\n')
        mdfile.write('|-----------|---------|---------|---------|---------|---------|---------|---------|---------|\n')
        for row1, row2, row3 in zip(reader1, reader2, reader3):
            name = row1[0]
            normal_time = int(row1[1]) - int(row1[2]) + int(row1[3]) * 0xffffff
            n_time = int(row2[1]) - int(row2[2]) + int(row2[3]) * 0xffffff
            n_overhead = ((n_time - normal_time) / normal_time) * 100
            switch_time = int(row3[1]) - int(row3[2]) + int(row3[3]) * 0xffffff
            s_overhead = ((switch_time - normal_time) / normal_time) * 100
            n_loader = int(row2[4])
            switch_loader = int(row3[4])
            trampline = int(int(row3[5]) / 100) * 100
            mdfile.write(f' {name} | {normal_time} | {n_time} | {n_overhead:.2f}% | {n_loader} |')
            mdfile.write(f' {switch_time} | {s_overhead:.2f}% | {switch_loader} | {trampline} |\n')