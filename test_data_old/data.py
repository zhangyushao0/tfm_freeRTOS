import csv

# 读取CSV文件
with open('data.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    data = list(csvreader)

# 将数据写入Markdown格式的文件
with open('res.md', 'w') as mdfile:
    mdfile.write('| 程序名 | 正常 | 开启 dwt | 开销 | loader 时间 |\n')
    mdfile.write('|-----------|---------|---------|---------|---------|\n')
    for row in data:
        mdfile.write('|')
        name = row[0]
        normal = (int(row[1]) - int(row[2])) + int(row[3]) * 0xffffff
        dwt = (int(row[4]) - int(row[5])) + int(row[6]) * 0xffffff
        overhead = ((dwt - normal) / normal) * 100
        loader = row[7]
        mdfile.write(f' {name} | {normal} | {dwt} | {overhead:.2f}% | {loader} |\n')
