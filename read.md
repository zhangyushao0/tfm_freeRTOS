脚本改为 loader_script/loader_v2.py

需要修改 new_loader.c 下的 relocation 中 type 5/6 情况，分别对应 movw 和 movt
