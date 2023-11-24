import os
import configparser    # python 3
import sys
from frame_parser import *
import section_read

config = configparser.ConfigParser()
config.read('./config.ini', encoding='utf-8')
section = 'funcs'
keyline = '#include "aslr_funcs.h"'
try:
    ELFpath_ns = config.get(section, 'ELFpath_ns')
    ELFpath_s = config.get(section, 'ELFpath_s')
    filepath = config.get(section, 'filepath')
    elf_frames_sizes_path = config.get(section, 'elf_frames_sizes_path')
    funcs_filepath = config.get(section, 'funcs_filepath')
    funcs_size_filepath = config.get(section, 'funcs_size_filepath')
except Exception as e:
    print('[INFO]Configuration Error:{}'.format(e))
    sys.exit(0)
try:

    [start_address, end_address] = section_read.get_section_size('.ITS', ELFpath_s)

    os.system('readelf -s ' + ELFpath_ns + '| grep FUNC > ./funcs.txt')
    os.system('readelf -s ' + ELFpath_s + '| grep FUNC > ./funcs_s.txt')
    with open("./funcs_s.txt", "r") as infile, open("./funcs.txt", "a") as outfile:
        for line in infile:
            address = line.split()[1]
            if int(address, 16) <= end_address and int(address, 16) >= start_address:
                outfile.write(line)
except Exception as e:
    print('[INFO]Command Error:{}'.format(e))
    sys.exit(0)

frame_parser(ELFpath_ns, ELFpath_s, elf_frames_sizes_path, funcs_filepath, funcs_size_filepath)


with open(filepath,'w') as fp:
    fp.write(keyline+'\n')
flag=0
dic=(128,256,64,64,64,64,64)
with open('./funcs_sizes.txt','r') as Ep:
    lines = Ep.readlines()
    funcs_num = 0
    for l in lines:
            call_frame_size=int(l.split()[0])
            size=int(l.split()[3])
            if size==0:
                size=dic[flag]
                flag=flag+1

            funcs_num = funcs_num + 1
            with open(filepath,'a') as fp:
                fp.write('  {\n')
                fp.write('      .start_address='+str(hex((int(l.split()[2],16)-1)))+',\n')
                fp.write('      .size='+str(size)+',\n')
                fp.write('      .call_frame_size='+str(call_frame_size)+'\n')
                fp.write('  },\n')
#os.remove('./funcs.txt')    # remove the temporary file
print(size)
with open(filepath,'a') as fp:
    fp.write('  };')
with open(filepath,'r') as fp:
    content = fp.read()
    post = content.find(keyline)
    if post != -1:
        content = content[:post+len(keyline)]+'\n   uint32_t funcs_num='+str(funcs_num)+';\n'+'   FUNCS_INFO funcs['+str(funcs_num)+']={\n'+content[post+len(keyline):]
        f = open(filepath,'w')
        f.write(content)
        f.close()
