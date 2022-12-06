#! /bin/bash

# 变量：
#		定义变量
#		使用变量
#		删除变量
#		只读变量
#		变量长度

variable="value"	#定义变量
echo $variable
variable="value1"	#重新定义变量
echo ${variable}	
unset variable		#删除变量
echo $variable		#输出一个未定义的变量值，输出为空
echo "********************"


stringVar="1234"
intVar=1234
readonly var	#只读变量：无法重新定义、无法删除
echo "the lengthof stringVar: ${#stringVar}"	#输出变量长度
echo "the lengthof intVar: ${#intVar}"			#输出变量长度
