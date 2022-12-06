#! /bin/bash

#read命令用于从终端或者文件中读取输入的内部命令
#read命令读取整行输入，每行末尾的换行符不被读入。
#在read命令后面，如果没有指定变量名，读取的数据将被自动赋值给特定的变量REPLY


#从标准输入读取输入并赋值被变量
#从标准输入读取输入直到第一个空格或者回车，将输入的第一个单词放到变量中，第二个单词放到第二个变量中，
#以此类推，剩下的字符留给最后一个变量
#
#	read [var]
#	read [var1] [var2]
read var
echo "var: ${var}" 

read var1 var2
echo "var1: ${var1}, var2: ${var2}"


#从标准输入读取一行并赋值给特定变量REPLY
#	read
read
echo "REPLY: ${REPLY}"


#将单词清单读取数组里
#	read -a [arrayname]
read -a array
echo "array length: ${#array[*]}"
for elem in ${array[*]}
do
	echo "elem: ${elem}"
done


#打印提示、等待输入
#	read -p [info] [var]
read -p "please input your name? " name
echo "name: ${name}"


#读超时: 最多等待timeout时间
#	read -t [timeout] [var]
read -t 2 timeoutVar
echo "timeoutVar: ${timeoutVar}"


#读取指定个数字符
#	read -n [size]	[var]
read -n 3 sizeVar;
echo -n -e "\n"
echo "sizeVar: ${sizeVar}"


#自定义结束输入行
#	read -d [char]	[var]
read -d ":" endVar;
echo -n -e "\n"
echo "endVar: ${endVar}"


#隐藏输入字符
#	read -s [var]
read -s -p "input you name: " slientVar;
echo ""
echo "name: ${slientVar}"