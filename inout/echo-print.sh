#! /bin/bash

# echo [-options] [string]
# -n 不要在最后自动换行
# -e 处理转义字符

echo -n "helloworld"
echo "*****"

echo "hello\n"
echo -e "hello\n"


#printf format-string [arguments...]
#printf命令用于格式化输出，是echo命令的增强版。
#printf由POSIX标准所定义，移植性比echo好。
#printf不像echo那样会自动换行，必须显示添加换行符

#几点注意
#		1. printf命令不加括号
#		2. format-string可以没有引号，但最好加上，单引号双引号均可
#		3. 参数多于格式控制符(%)时，format-string可以重用，可以将所有参数都替换	
#		4. arguments使用空格分隔，不用逗号


printf "%d %s\n" 1 "abc"
#format-string被重用
printf "%s %s\n" aaa bbb ccc ddd
