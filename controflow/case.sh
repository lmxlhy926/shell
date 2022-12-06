#! /bin/bash

# case ... esac 与其它语言中的switch ... case语句类似，是一种多分支选择结构
# case语句匹配一个值或者一个模式，如果匹配成功，则执行向匹配的命令
#
#	case 值 in
#	模式1）
#		command1
#		command2
#		command3
#	;;
#	模式2）
#		command1
#		command2
#		command3
#	;;
#	*)
#		command1
#		command2
#		command3
#	;;
#	esac
#
#	取值可以为变量或者常数，匹配发现取值符合某一模式后，其间所有命令开始执行直至;;。

read -p "please input a number: " number
echo "number: ${number}"

case $number in
	1)
		echo "you select 1"
		;;
	2)
		echo "you select 2"
		;;
	3) 
		echo "you select 3"
		;;
	4|5)
		echo "you select 4 or 5"
		;;
	-f)
		echo "param is -f"
		;;
	-d)
		echo "param is -d"
		;;
	"2")
		echo -e "you select \"2\""
		;;
	*)
		echo "default..."
		;;
esac