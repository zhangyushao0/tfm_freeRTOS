import os
import configparser    # python 3
import sys

## The following debug frame shows an example that a FDE may have more than one DW_CFA_def_cfa_offset.
# DW_CFA_advance_loc: 2 to 000083d4
#   DW_CFA_def_cfa_offset: 24
#   DW_CFA_offset: r3 at cfa-24
#   DW_CFA_offset: r4 at cfa-20
#   DW_CFA_offset: r5 at cfa-16
#   DW_CFA_offset: r6 at cfa-12
#   DW_CFA_offset: r7 at cfa-8
#   DW_CFA_offset: r14 at cfa-4
#   DW_CFA_advance_loc: 6 to 000083da
#   DW_CFA_def_cfa_offset: 32
#   DW_CFA_offset: r8 at cfa-32
#   DW_CFA_offset: r9 at cfa-28
#   DW_CFA_nop
#   DW_CFA_nop
##

# Functions in ELF file
# config = configparser.ConfigParser()
# config.read('./config.ini',encoding='utf-8')
# section = 'funcs'
# try:
#     ELFpath_ns = config.get(section,'ELFpath_ns')
#     filepath = config.get(section,'filepath')
#     funcs_filepath = config.get(section,'funcs_filepath')
#     funcs_size_filepath = config.get(section,'funcs_size_filepath')
# except Exception as e:
#     print('[INFO]Configuration Error:{}'.format(e))
#     sys.exit(0)

def frame_parser(ELFpath_ns, ELFpath_s, filepath, funcs_filepath, funcs_size_filepath):
    try:
        os.system('readelf --debug-dump=frames ' + ELFpath_ns + '| grep "FDE DW_CFA_def_cfa_offset" > ./ELF_debug_frames.txt')
        os.system('readelf --debug-dump=frames ' + ELFpath_s + '| grep "FDE DW_CFA_def_cfa_offset" >> ./ELF_debug_frames.txt')
    except Exception as e:
        print('[INFO]Command Error:{}'.format(e))
        sys.exit(0)

    with open(filepath,'w') as fp:
        fp.write('')
    frame_funcs_num = 0
    i = 0
    with open('./ELF_debug_frames.txt','r') as Ep:
        frame_lines = Ep.readlines()
        while i < len(frame_lines):
            fline = frame_lines[i]
            pos = fline.find('pc=')
            if pos >=0 :                            # find a FDE header
                fpc = int(fline[pos+3:pos+11],16)   # get new function entry
                if fpc != 0:
                    # write fpc
                    with open(filepath,'a') as fp:
                        fp.write('\n' + str(hex(fpc)) + ' ')
                    frame_funcs_num = frame_funcs_num + 1
            else:                                               # find a line containing potential frame size
                if fpc != 0:
                    frame_size = int(fline.split()[1])
                    #print(frame_size)
                    if i < len(frame_lines)-1:                  # if this is not the last line
                        next_fline = frame_lines[i+1]           # check if the next line is a FDE header
                        if next_fline.find('FDE') >= 0:         # write file if this is the last line of the current FDE
                            with open(filepath,'a') as fp:
                                fp.write(str(frame_size))
                    else:                                       # if this is the last line, write file
                        with open(filepath,'a') as fp:
                            fp.write(str(frame_size))
            i = i + 1
    with open(filepath, 'r') as fin:
        data = fin.read().splitlines(True)
    with open(filepath, 'w') as fout:
        fout.writelines(data[1:])
    print("# of funcs in .debug_frame: %d" %frame_funcs_num)

    # Add size to funcs.txt
    elf_func_size_num = 0
    elf_func_no_size_num = 0
    libc_func_size_num = 0
    flag = 0
    with open(filepath, 'r') as fin:
        size_lines = fin.readlines()
    with open(funcs_size_filepath,'w') as fp:
        fp.write('')
    with open(funcs_filepath,'r') as Ep:
        lines = Ep.readlines()
        for l in lines:
            with open(funcs_size_filepath,'a') as fp:
                f_addr = str(hex(int(l.split()[1],16)-1))
                for sl in size_lines:   # search f_addr in frames_sizes.txt
                    if sl.find(f_addr) >= 0:
                        flag = 1
                        if len(sl.split()) >= 2:
                            fp.write(str(sl.split()[1]))
                            elf_func_size_num = elf_func_size_num + 1
                        else:
                            fp.write('0')
                            elf_func_no_size_num = elf_func_no_size_num + 1
                            # print(l)
                # if current fucntion is find in frames_sizes.txt
                if flag == 0:
                    fp.write('0')
                    libc_func_size_num = libc_func_size_num + 1
                    print(l)
                else:
                    flag = 0    # reset flag
                fp.write(l)
    print("# of funcs which have frame sizes found in elf: %d" %elf_func_size_num)
    print("# of funcs which are found in elf.debug_frame but do not have frame sizes: %d" %elf_func_no_size_num)
    print("# of funcs which are not found in elf.debug_frame: %d" %libc_func_size_num)
    print("Total # of funcs: %d" %(elf_func_size_num+elf_func_no_size_num+libc_func_size_num))
