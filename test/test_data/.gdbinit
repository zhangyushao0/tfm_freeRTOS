set logging file /home/han/tfm_freeRTOS/test/test_data/data.txt
set logging on
target remote 127.0.0.1:61234
add-symbol-file ./build/bin/ns_app.elf
watch *(0x200049b0)
watch *(0x200049b2)
watch *(0x200049ad)
c
info registers r3
info registers r4
info registers r5
q
q