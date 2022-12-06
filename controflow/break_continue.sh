#! /bin/bash


# 在循环过程中，有时候需要在未达到循环结束条件时，强制跳出循环。
# 在嵌套循环中，break命令后面还可以跟一个整数，表示跳出第几层循环。
# continue命令，不执行后面的命令，继续循环，同样后面可以跟一个数字，表示跳到第几层循环。

for var1 in 1 2 3
do
	for var2 in 1 2 3
	do
		if [ $var1 -eq 1 -a $var2 -eq 2 ]
		then 
			break 2
		else
			echo "$var1 $var2"
		fi
	done
done

echo "--------------------------"

for var1 in 1 2 3
do
	for  var2 in 1 2 3
	do
		if [ $var1 -eq 1 -a $var2 -eq 2 ]
		then 
			continue 2
		fi
		echo "$var1 $var2"
	done
done






