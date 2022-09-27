
#!/usr/bin/bash

# Define function
echo

Fun()
{
    echo "this is my first function in shell scripting"
}

# Invoke Function

Fun
echo

# function with arguents

Fun1()
{
    echo "Hello $1 $2"
}

Fun1 "Kishore!" Welcome
echo

# function with return value

return_fun()
{
    echo "return function"
    echo
    return 10
}

return_fun
echo "Returned value : $?"
echo

# simple calculation using two numbers

Calci()
{
    sum=`expr $1 + $2`
    return $sum # it return only between 0 to 255
}

num1=1000
num2=5

Calci $num1 $num2
echo "sum of $num1 and $num2 : $?" # result of this is 1005 but it return 237
echo

# resove above issue

Calci()
{
    sum=`expr $1 + $2`
    echo $sum
}

num1=1000
num2=5

result=$(Calci $num1 $num2)
echo "sum of $num1 and $num2 : $result"
echo

# calling another function inside function

function_1()
{
    echo "calling function_2 inside function_1"
    echo
    function_2
    echo
    echo "after calling function_2"
}

function_2()
{
    echo "inside function_2"
}

function_1
echo

# Recursive function

sum=0

recurr_func()
{
    if [ $1 -eq 0 ]
    then
	return
    fi
    sum=`expr $sum + $1`
    val=`expr $1 - 1`
    recurr_func $val
}

recurr_func 10
echo sum of first 10 numbers using recurssion : $sum
echo

