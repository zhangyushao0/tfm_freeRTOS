#!/bin/bash

cd /home/jiangzixian/tfm_freeRTOS_relo_func1/build/bin &&
readelf -s ns_app.elf | grep FUNC > ../../platform/ext/target/stm/aslr_freertos_nsapp/loader/script/func_info.txt &&
readelf -r ns_app.elf > ../../platform/ext/target/stm/aslr_freertos_nsapp/loader/script/relocation.txt &&
readelf -s ns_app.elf > ../../platform/ext/target/stm/aslr_freertos_nsapp/loader/script/symbol_table.txt &&

cd /home/jiangzixian/tfm_freeRTOS_relo_func1/platform/ext/target/stm/aslr_freertos_nsapp/loader/script &&
sudo ./func_load.py &&
sudo ./loader.py  &&
cd /home/jiangzixian/tfm_freeRTOS_relo_func1/build