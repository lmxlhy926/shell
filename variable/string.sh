#! /bin/bash

# 字符串：
#		定义字符串: 单引号、双引号、没有引号
#		拼接字符串：不能由间隔
#		提取字符串：指定位置、数量
#		字符串长度

#单引号：任何字符都会原样输出，无法进行变量替换, 无法输出转义字符
str0='hello'
str='this is a \" \" string: ${str0}'
echo str: ${str}

#双引号：可以进行变量替换，可以出现转义字符
str0="hello"
str="this is a \" \" string: ${str0}"
echo "str: ${str}"

#没有引号
str=0str0:${str0}	
echo "str: ${str}"

#字符串拼接：拼接的字符串之间不能有空格
name="wenong"
greeting="hello, "${name}" !"
greeting_1="hello, ${name} !"
echo $greeting $greeting_1

#提取字符串
printstr="alibaba"
echo ${printstr:2:2}	#指定起始位置，指定字符数量
echo ${printstr:2}		#不指定字符数量，默认为所有

#获取字符串长度
echo "length of wenong: ${#name}"