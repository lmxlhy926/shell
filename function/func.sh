#! /bin/bash

#命令行参数：
#		$0：当前脚本文件名
#		$n：传递给脚本或函数的参数
#		$#：传递给脚本或函数的参数个数
#		$*：传递给脚本或函数的所有参数
#		$@：传递给脚本或函数的所有参数
#		$?：上个命令的退出状态，或函数的返回值
#		$$：当前shell进程ID。
#

# shell支持函数。shell函数必须先定义后使用, 注意是定义不是声明	
# 函数返回值：
#		1. shell函数返回值只能是整数
#		2. 可以显式增加return语句; 如果不加，会将最后一条命令运行结果作为返回值。
#		3. 返回字符串，可以先定义一个变量，用来接收函数计算结果，在脚本需要的时候访问这个变量。
#

echo "shell param: $*, count: $#"


myfunc1(){
	echo "in myfunc1"
	echo "param: $*"
	var="varString in myfunc1"
	echo "************"
}

myfunc2(){
	echo "in myfunc2"
	echo "param: $@"	#使用函数的参数
	myfunc1 $1 $2
	return 5
}

myfunc2 $1 $2			#调用函数时携带参数
echo "myfunc2 return $?"
echo "***: ${var}"









