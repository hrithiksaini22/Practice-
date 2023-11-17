#!/bin/bash
file=hi
if [ -d "$file" ]
then
list=$(ls -R "$file")
echo " file is $file"
echo " content inside is $list "
else
mkdir "$file"
cp -r new hi
list=$(ls -R "$file")
echo " file is $file"
echo " content inside is $list "
fi 
