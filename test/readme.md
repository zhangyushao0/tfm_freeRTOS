# 测试流程

该脚本只能减少查看变量的值时间，不能自动化测试

## 文件结构

```bash
├── data
│   ├── data.csv
│   ├── data.py
│   ├── data_n.csv
│   ├── data_switch.csv
│   ├── res.md
│   ├── res_n.md
│   └── res_s.md
├── readme.md
├── test_data # 源程序测试
│   ├── data.py
│   └── data.txt
└── test_data_n # 开启 dwt 测试
    ├── data_n.py
    └── data_n.txt
```

## 操作流程

1. 将 `.gdbinit` 文件放置在 `~` 目录下，并且修改对应 `data.txt` 文件位置

2. 开启两个终端，一个执行命令 `./comdown.sh -g`，另一个执行命令 `arm-none-eabi-gdb /home/han/tfm_freeRTOS/build/bin/tfm_s.elf`

3. 在 `gdb` 终端按 `enter` 键

最后可以在 `data.txt` 文件中查看到数据，数据对应关系如下：

```c
__asm__ volatile("mov r3, %0\n\t" : : "r"(start) : "r3");
__asm__ volatile("mov r4, %0\n\t" : : "r"(end) : "r4");
__asm__ volatile("mov r5, %0\n\t" : : "r"(load) : "r5");
```
