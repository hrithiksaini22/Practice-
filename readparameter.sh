#!/bin/bash
echo "hi"
for param in $*
do 
if [ -d "$param" ]
then 
echo " ${param} is a directory"
elif [ -f "$param" ]
then
echo " ${param} is a file"
else
echo " ${param} is ambiguous"
fi
done
