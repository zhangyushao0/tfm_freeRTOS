set logging file /home/han/srtp_new/tfm_freeRTOS/test_data/data_switch.txt
set logging on
target remote 127.0.0.1:61234
add-symbol-file ./build/bin/ns_app.elf
b *(0xc005f72)
c
info registers r0
watch *0x200049a0
c
info registers r3
info registers r4
info registers r5
info registers r6
q
q
