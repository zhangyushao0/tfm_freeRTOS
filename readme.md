# step 1 生成make文件
```bash
mkdir cmake_build
cd cmake_build
cmake .. -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON
```
# step 2 编译
```bash
cd ..
chmod +x comdown.sh
bash comdown.sh -c
```
# step 3 烧录
```bash
bash comdown.sh -d
```
# step 4 运行
此时应该可以看到板子的LD9灯闪烁，说明程序正常运行。