#! /bin/bash



#shell替换
#如果表达式中包含特殊字符，shell将会进行替换。
a=10
echo "value of a is $a"

#命令替换
#shell可以先执行命令，将输出结果暂时保存，在适当地方输出
#``: 这个是反引号，不是单引号
DATE=`date`
echo "Date is $DATE"