#! /bin/bash

#	for 变量 in 列表
#	do
#		command1
#		command2
#		commandN
#	done
#

# 列表是一组值（数字、字符串等）组成的序列，每个值通过空格分隔。每循环一次，就将列表中的下一个值赋给变量。
# in列表是可选的，如果不用它，for循环使用命令行的位置参数

for var in 1 2 3 4 5
do
	echo "var: ${var}"
done


#使用命令行的位置参数，从第一个命令行参数开始
for var
do
	echo "param: ${var}"
done


#可以是不同类型的数据
for str in 'hello' "hello" 2
do	
	echo "char: ${str}"
done


for file in ${HOME}/.bash*
do
	echo ${file}
done




