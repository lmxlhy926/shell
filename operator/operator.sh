#! /bin/bash

# 运算符：
#		算术运算符 					：+ - * / % =
#		关系运算符(只支持数字)		: -eq -ne -gt -lt -ge -le == != 
#		布尔运算符					：! -o -a
#		字符串运算符				: = != -z 
#		文件测试运算符				: -r -w -x -e -d
#

#算术运算符
a=10
b=20
echo "a=${a}, b=${b}"
echo "a+b: $(($a + $b))"
echo "a-b: $(($a - $b))"
echo "a*b: $(($a * $b))"
echo "a/b: $(($a / $b))"
echo "a%b: $(($a % $b))"


#关系运算符
read -p "please input number a: " a
read -p "please input number b: " b
if [ $a -eq $b ]
then
	echo "a == b"
elif [ $a -gt $b ]
then
	echo "a > b"
elif [ $a -lt $b ]
then
	echo "a < b"
elif [ $a -ge $b ]
then
	echo "a >= b"
elif [ $a -le $b ]
then
	echo "a <= b"
elif [ $a -ne $b ]
then
	echo "a != b"
else
	echo "no met the condition"
fi


#逻辑运算符
read -p  "please input a number: " a
if [ $a > 10 -a $a < 20 ]
then
	echo " 10 < a < 20"
fi

read -p "please input a number: " b
if [ $a < 10 -o $a > 20 ]
then
	echo " a < 10 或 a > 20"
fi

#字符串运算符
read -p "please input string a: " a
read -p "please input string b: " b
if [ $a = $b ]
then
	echo "a == b"
elif [ $a != $b ]
then
	echo "a != b"
fi

if [ -z $a ]
then 
	echo "the length of a is 0"
else
	echo "the length of a is not 0"
fi


#文件测试运算符
file=$1
echo "file: ${file}"
if [ -e $file ]
then
	echo "${file} exists"
fi
if [ -f $file ]
then
	echo "${file} is normal file"
fi
if [ -d $file ]
then
	echo "${file} is directory"
fi
if [ -r $file ]
then
	echo "${file} can be read"
fi
if [ -w $file  ]
then
	echo "${file} can be write"
fi
if [ -x $file ]
then	
	echo "${file} can be executed"
fi



















