set logging file /home/han/srtp_new/tfm_freeRTOS_dwt/test_data_n/data_n.txt
set logging on
target remote 127.0.0.1:61234
add-symbol-file ./build/bin/ns_app.elf
b *(0xc005a6a)
c
info registers r0
watch *(0x200049b0)
watch *(0x200049b2)
watch *(0x200049ad)
c
info registers r3
info registers r4
info registers r5
q
q