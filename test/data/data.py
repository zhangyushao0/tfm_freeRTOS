import csv

# 打开三个CSV文件

def func_n(file1, file2):
    reader1 = csv.reader(file1)
    reader2 = csv.reader(file2)
    with open('res_n.md', 'w') as mdfile:
        mdfile.write('[*应用程序*], [*基准时间*], [*无切换时间*], [*性能开销*], [*初始化时间*],\n')
        for row1, row2 in zip(reader1, reader2):
            name = row1[0]
            normal_time = int(row1[1]) - int(row1[2]) + int(row1[3]) * 0xffffff
            n_time = int(row2[1]) - int(row2[2]) + int(row2[3]) * 0xffffff
            n_overhead = ((n_time - normal_time) / normal_time) * 100
            n_loader = int(row2[4])
            mdfile.write(f'[{name}], [{normal_time}], [{n_time}], [{n_overhead:.2f}%], [{n_loader}],\n')

def func_s(file1, file3):
    reader1 = csv.reader(file1)
    reader3 = csv.reader(file3)
    with open('res_s.md', 'w') as mdfile:
        mdfile.write('[*应用程序*], [*基准时间*], [*切换时间*], [*性能开销*], [*初始化时间*], [*切换次数*],\n')
        for row1, row3 in zip(reader1, reader3):
            name = row1[0]
            normal_time = int(row1[1]) - int(row1[2]) + int(row1[3]) * 0xffffff
            switch_time = int(row3[1]) - int(row3[2]) + int(row3[3]) * 0xffffff
            s_overhead = ((switch_time - normal_time) / normal_time) * 100
            s_loader = int(row3[4])
            trampline = int(int(row3[5]) / 100) * 100 * 2
            mdfile.write(f'[{name}], [{normal_time}], [{switch_time}], [{s_overhead:.2f}%], [{s_loader}], [{trampline}],\n')


with open('data.csv', 'r') as file1, open('data_n.csv', 'r') as file2:
    func_n(file1, file2)

with open('data.csv', 'r') as file1, open('data_switch.csv', 'r') as file3:
    func_s(file1, file3)
