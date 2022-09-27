#!/usr/bin/bash

echo
# for loop

# for val in w1 w2 w3 .... wn
# do
#	statement
# done

sum=0

for value in 0 1 2 3 4 5 6 7 8 9 10
do
    sum=`expr $sum + $value`
done

echo Summed by for_loop : $sum

echo
# while loop

a=0

while [ $a -lt 10 ]
do
  a=`expr $a + 1`
done

echo a incremented by while_loop : $a

echo
#until loop

b=0

until [ $b -eq 10 ]
do
    b=`expr $b + 1`
done

echo b incremented by until_loop : $b

echo
# nested_loop

c=0
value=0
echo Starting value : $value

while [ $c -lt 10 ]
do
    d=0
    while [ $d -lt 5 ]
    do
	value=`expr $value + 1`
	d=`expr $d + 1`
    done
    echo iteration $c : $value
    c=`expr $c + 1`
done

echo
#nested pattern

val1=0

while [ $val1 -le 10 ]
do
    val2=$val1
    while [ $val2 -ge 0 ]
    do
	echo -n "$val2 "
	val2=`expr $val2 - 1`
    done
    echo
    val1=`expr $val1 + 1`
done

echo
# if else break continue

num=0

while [ $num -lt 10 ]
do
    if [ $num -eq 5 ]
    then
	echo
	break
    else
	echo -n "$num "
	num=`expr $num + 1`
	continue
    fi
    echo this statement is not printed
done
