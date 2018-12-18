# !/bin/bash
# echo Hello World !dsada
# your_name="zzy"
# echo $your_name
# echo ${your_name}
# echo "my name is ${your_name}"
# echo 'my name is ${your_name}'
# unset your_name

# echo "---------------"
# your_name="runoobbbbb"

# greeting="hello, "+$your_name" !"
# greeting_1="hello, ${your_name} !"
# echo $greeting  $greeting_1

# greeting_2='hello, '$your_name' !'
# greeting_3='hello, ${your_name} !'
# echo $greeting_2  $greeting_3

# echo "---------------"

# string="runoob is a great site"
# echo ${string:3:8} # 输出 oob is a 

# string="abcd"
# echo ${#string} #输出 4 获取字符串长度

# var="http://www.aaa.com/123.htm"
# echo ${var#*/}
# echo ${var##*/}
# echo ${var%/*}
# echo ${var%%/*}
# echo ${var:0:5} #从左边第几个字符开始，及字符的个数
# echo ${var:7} #从左边第几个字符开始，一直到结束。
# echo ${var:0-6:3} #其中的 0-7 表示右边算起第七个字符开始，3 表示字符的个数。
# echo ${var:0-7} #从右边第几个字符开始，一直到结束。

# read -p "input a val:" a    #获取键盘输入的 a 变量数字
# read -p "input b val:" b    #获取键盘输入的 b 变量数字
# r=$[a+b]                    #计算a+b的结果 赋值给r  不能有空格
# echo "result = ${r}"        #输出显示结果 r

# echo "Shell 传递参数实例！";
# echo "测试0：$0";
# echo "第一个参数为：$1";
# echo "第二个参数为：$2";
# echo "第三个参数为：$3";

# echo "-- \$* 演示 ---"
# for i in "$*"; do
#     echo $i
# done

# echo "-- \$@ 演示 ---"
# for i in "$@"; do
#     echo $i
# done

# my_array=(A B C D)

# my_array[1]=C
# my_array[0]=A
# my_array[2]=D
# echo ${my_array[1]}
# echo ${my_array[*]} #使用@ 或 * 可以获取数组中的所有元素
# echo ${my_array[@]}

# echo "数组元素个数为: ${#my_array[*]}"
# echo "数组元素个数为: ${#my_array[@]}" #获取数组长度的方法与获取字符串长度的方法相同


# my_arry=(a b "c","d" abc)
# echo "-------FOR循环遍历输出数组--------"
# for i in ${my_arry[@]};
# do
#   echo $i
# done

# echo "-------::::WHILE循环输出 使用 let i++ 自增:::::---------"
# j=0
# while [ $j -lt ${#my_arry[@]} ]
# do
#   echo ${my_arry[$j]}
#   let j++
# done

# echo "--------:::WHILE循环输出 使用 let  "n++ "自增: 多了双引号，其实不用也可以:::---------"
# n=0
# while [ $n -lt ${#my_arry[@]} ]
# do
#   echo ${my_arry[$n]}
#   let "n++"
# done

# echo "---------::::WHILE循环输出 使用 let m+=1 自增,这种写法其他编程中也常用::::----------"
# m=0
# while [ $m -lt ${#my_arry[@]} ]
# do
#   echo ${my_arry[$m]}
#   let m+=1
# done

# echo "-------::WHILE循环输出 使用 a=$[$a+1] 自增,个人觉得这种写法比较麻烦::::----------"
# a=0
# while [ $a -lt ${#my_arry[@]} ]
# do
#  echo ${my_arry[$a]}
#  a=$[$a+1]
# done

# val=`expr 2 + 2`
# echo "两数之和为 : $val"

# a=10
# b=20

# val=`expr ${a} + $b`
# echo "$val"

# val=`expr $a - $b`
# echo "$val"

# val=`expr $a \* $b` #乘号(*)前边必须加反斜杠(\)才能实现乘法运算
# echo "$val"

# val=`expr $b / $a`
# echo "$val"

# if [ $a == $b ]
# then 
# 	echo "a == b"
# fi
# if [ $a != $b ]
# then 
# 	echo "a != b"
# fi
#关系运算符只支持数字，不支持字符串，除非字符串的值是数字

# a=10
# b=20

# if [ $a -eq $b ]
# then
#    echo "$a -eq $b : a 等于 b"
# else
#    echo "$a -eq $b: a 不等于 b"
# fi
# if [ $a -ne $b ]
# then
#    echo "$a -ne $b: a 不等于 b"
# else
#    echo "$a -ne $b : a 等于 b"
# fi
# if [ $a -gt $b ]
# then
#    echo "$a -gt $b: a 大于 b"
# else
#    echo "$a -gt $b: a 不大于 b"
# fi
# if [ $a -lt $b ]
# then
#    echo "$a -lt $b: a 小于 b"
# else
#    echo "$a -lt $b: a 不小于 b"
# fi
# if [ $a -ge $b ]
# then
#    echo "$a -ge $b: a 大于或等于 b"
# else
#    echo "$a -ge $b: a 小于 b"
# fi
# if [ $a -le $b ]
# then
#    echo "$a -le $b: a 小于或等于 b"
# else
#    echo "$a -le $b: a 大于 b"
# fi

# a=10
# b=20

# if [ $a != $b ]
# then echo "a != b"
# else echo "a == b"
# fi
# if [ $a -lt 0 -o $b -gt 10 ]
# then echo "a lower than 0 or b greater than 10"
# else echo "a larger than 0 and b smaller than 10"
# fi 
# if [ $a -lt 0 -a $b -gt 10 ]
# then echo "a lower than 0 and b greater than 10"
# else echo "a bigger than 0 and b smaller than 10"
# fi
# if [[ $a -lt 0 || $b -gt 10 ]]
# then echo "a lower than 0 or b greater than 10"
# else echo "a larger than 0 and b smaller than 10"
# fi 
# if [[ $a -lt 0 && $b -gt 10 ]]
# then echo "a lower than 0 and b greater than 10"
# else echo "a bigger than 0 and b smaller than 10"
# fi

# read name 
# echo "$name is my name" # read 命令一个一个词组地接收输入的参数，
#每个词组需要使用空格进行分隔；如果输入的词组个数大于需要的参数个数，
#则多出的词组将被作为整体为最后一个参数接收。
# read firstStr secondStr
# echo "第一个参数:$firstStr; 第二个参数:$secondStr"

# echo -e "OK! \n" # -e 开启转义
# echo "It is a test"

# echo -e "OK! \c" # -e 开启转义 \c 不换行
# echo "It is a test"

# echo "It is a test" > new.sh

#-p 输入提示文字
# -n 输入字符长度限制(达到6位，自动结束)
# -t 输入限时
# -s 隐藏输入内容
# read -p "请输入一段文字:" -n 6 -t 5 -s password
# echo -e "\npassword is $password"

#%d %s %c %f
#d: Decimal 十进制整数
#s: String 字符串 
#c: Char 字符
#f: Float 浮点 
# printf "%d %s %c\n" 1 "abc" "def" #其中最后一个参数是 "def"，%c 自动截取字符串的第一个字符作为结果输出。
# printf "Hello, Shell\n"
# printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  #%-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐），
# #任何字符都会被显示在10个字符宽的字符内，如果不足则自动以空格填充，超过也会将内容全部显示出来。
# printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
# printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
# printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 
# printf %s abcdef #要\n必须有format-string即双引号
# printf %s abc def #格式只指定了一个参数，但多出的参数仍然会按照该格式输出
# printf "%s\n" abc def
# printf "%s %s %s\n" a b c d e f g h i j
# # 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
# printf "%s and %d \n" 

# a=100
# b=100
# if test $a -eq $b
# then
#     echo '两个数相等！'
# else
#     echo '两个数不相等！'
# fi

# num1="ru1noob"
# num2="runoob"
# if test $num1 = $num2
# then
#     echo '两个字符串相等!'
# else
#     echo '两个字符串不相等!'
# fi

# a=10
# b=20
# if [ $a == $b ]
# then echo "a等于b"
# elif [ $a -gt $b ]
# then echo "a大于b"
# elif [ $a -lt $b ]
# then echo "a小于b"
# else echo "Wrong!"
# fi
	
# for a in 1 2 3 4 5;do echo "value is $a";done;

# for str in This is a string, "test a b c"
# do
#     echo $str
# done

# index=1
# while(( $index<6 ))
# do 
# 	echo "$index"
# 	let index++
# done 

# echo '输入 1 到 4 之间的数字:'
# echo '你输入的数字为:'
# read aNum
# case $aNum in
#     1)  echo '你选择了 1'
#     ;;
#     2)  echo '你选择了 2'
#     ;;
#     3)  echo '你选择了 3'
#     ;;
#     4)  echo '你选择了 4'
#     ;;
#     *)  echo '你没有输入 1 到 4 之间的数字'
#     ;;
# esac

# while : 
# do
#     echo -n "输入 1 到 5 之间的数字:"
#     read aNum
#     case $aNum in
#         1|2|3|4|5) echo "你输入的数字为 $aNum!"
#         ;;
#         *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
#             break
#         ;;
#     esac
# done

a=123
echo \$\{a\}