
#!/usr/bin/bash

# variable_name=variable_value

Name="Kishore"
Age=20
Gender="male"

# readonly age we cannot able to modify the upcomming lines

readonly Age

# printing variables

echo Name : $Name
echo Age : $Age
echo Gender : $Gender

# here we are try to modify the readonly variable then it throws an error

Age=19

# here we are unset(delete) the value of variable if we try to print the unset variable it will print empty line

unset Name
echo $Name

#special variables
# $0 file name
# $1...9 arguments
# $# no of arguments applied to your script
# $* this will return all arguments that are double quoted
# $@ this will give you the arguments that are individually double quoted
# $? exit status

echo "File_Name : $0"
echo "First_argument : $1"
echo "Second_argument : $2"
echo "Third_Argument : $3"
echo "Fourth_Argument : $4"
echo "No of Arguments : $#"
echo "DoubleQuoted : $*"
echo "Individually Double Quoted : $@"
echo "Exit_Status : $?"

# for loop

for Token in $@
do
	echo $Token
done

