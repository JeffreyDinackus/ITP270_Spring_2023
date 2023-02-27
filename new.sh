#!/bin/bash

#Different shells handle things slightly differently.

CustomerName=Jedidiah
#it won't work if you have spaces in zsh, it may work with the spaces in other bash shells. 
echo $CustomerName

#this is a varaible that is also a number. 
declare -i PhoneNumber=5042030234

#this is a constant. -r means read-only. 
declare -r Pi=3.14
echo $Pi

#this is how to make a array
tempArray=(1,2,3,4,5)
echo $tempArray

#this is called a associatiave array, it might be like a object.
declare -A PhoneBook
PhoneBook[name]="Humus"
PhoneBook[number]="444-3029"

printf ${PhoneBook[name]}"\n"
printf ${PhoneBook[number]}"\n"

#control flow
a=1


b=1
#-eq means squal to
if (("$a" == "$b"))
then
printf "a = b\n"

fi

b=2

#in newer versions of bash this will work.
if (("$a" < "$b")) 
then
printf "a < b\n"

fi

echo "I can count!"
for b in {1..5}
do
    echo $b
done
echo "all done"

#this script is broken in zsh
counter=1
while [$counter -lt 10]
do
echo $counter
((counter++))
done
echo "all done"

testString="test string"

echo ${testString:2:4}

echo "enter your name"
read UserName
echo $UserName

#sending file content to a variable
touch test.txt
echo "I like to dance" >> test.txt

TempFile=$(<test.txt)

echo $TempFile
