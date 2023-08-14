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
# step 3 更改脚本烧录器路径
打开comdown.sh，修改如下路径为你的烧录器路径
```bash
STM32_Programmer_CLI_PATH="/mnt/d/stm32prog/bin"
```
此路径可以在stm32cubeprog安装目录下找到，我的是D盘，所以是/mnt/d/stm32prog/bin，/mnt表示挂载,/mnt/d表示的挂载的windows的D盘，可以在linux下使用df -h命令查看。
# step 4 烧录
```bash
bash comdown.sh -d
```
# step 5 运行
此时应该可以看到板子的LD9灯闪烁，说明程序正常运行。