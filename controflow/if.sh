#! /bin/bash

# 条件表达式和'[]'之间必须有空格，if和'['之间也要有空格，否则会有语法错误。
read -p "input number a: " a
read -p "input number b: " b

#if
if [ $a == $b ]
then
	echo "a is equal to b"
fi

#if-else
if [ $a == $b ]
then
	echo "a is equal to b"
else
	echo "a is not equal b"
fi

#if-elif-else
if [ $a == $b ]
then
	echo "a is equal to b"
elif [ $a -gt $b ]
then
	echo "a is greater than b"
elif [ $a -lt $b ]
then
	echo "a is less than b"
else
	echo "none of the condition met"
fi
