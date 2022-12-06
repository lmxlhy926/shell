#! /bin/bash

# while循环用于不断执行一系列命令，也用于从输入文件中读取数据；命令通常为测试条件
# while expression
# do
#	....
# done
#

count=0
while [ $count -lt 5 ]
do
	count=$(($count + 1))
	echo $count
done

echo -n "input film: "
while read film
do
	echo "great film the ${film}"
done

