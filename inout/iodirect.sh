#! /bin/bash

# IO重定向
#	linux命令默认从标准输入设备获取输入，将结果输出到标准输出设备。
#	一般情况下，标准输入设备就是键盘，标准输出设备就是终端即显示器。
#	
#	command  > 	 file 	: 将标准输出重定向到file。
#	command  2>  file 	: 追加重定向
#	command  >>  file 	: 将标准输出重定向到file，以追加的方式。
#	command  2>> file 	: 追加重定向
#	command  < 	 file 	: 将标准输入重定向到file。
#	
#	n>&m : 将输出文件m和n合并
#	n<&m : 将输入文件m和n合并


#标准输出重定向
ls -l > file
ls -l >> file

#标准错误重定向
ls -l 2> file
ls -l 2>> file

#标准输出和标准错误合并
ls -l > file 2>&1

#标准输入重定向
read var < file

#同时重定向标准输出、标准输入
command > file1 < file2

# /dev/null 
# 是一个特殊的文件，写入到它的内容都会被丢弃
# 如果尝试从该文件读取内容，那么什么也读不到
command > /dev/null