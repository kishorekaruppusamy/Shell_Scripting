#!/usr/bin/bash
cd
cd Documents
cd Projects
cd Java

a=0

until [ $a -eq 10 ]
do
    javac samplecode.java
    java samplecode
done
