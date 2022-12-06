#! /bin/bash

# 数组：
#		定义数组：2种方式
#		访问数组：单个元素、全部元素
#		获取数组长度
#		遍历数组


#数组定义方式1，数组元素用空格分隔开
array0=(1,, "hello")	
echo "array0[0]: ${array0[0]}"				#访问指定的数组元素
echo "array0[1]: ${array0[1]}"
echo "length of array0[0]: ${#array0[0]}"	#指定数组元素的长度
#访问数组全部元素
#数组的长度
echo "all elements of array0: ${array0[*]}, length: ${#array0[*]}"	

#数组定义方式2，一个元素一个元素进行定义
array1[0]=2				
array1[1]="world"	
echo "array1[0]: ${array1[0]}"
echo "array1[1]: ${array1[1]}"
echo "all elements of array1: ${array1[@]}, length: ${#array1[@]}"

#数组的遍历
array2=(1 2 3 "hello" "world")
for element in ${array2[*]}
do
	echo "element: ${element}"
done
