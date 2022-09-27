#!/usr/bin/bash

#Arithmetic Operators

var_a=10
var_b=5
var_c=0

echo Addition : `expr $var_a + $var_b`
echo Subtraction : `expr $var_a - $var_b`
echo Multiplication : `expr $var_a \* $var_b`
echo Division : `expr $var_a / $var_b`
echo Modulus : `expr $var_a % $var_b`
var_c=$var_b
echo Assignment : $var_c
echo Equality : $[$var_a == $var_b]
echo Not-Equality : $[$var_a != $var_b]
