#!/bin/bash
echo " this script is gor printing the files under another file"
filename=/home/userland/dbms
if [ -d "dbms" ]
then
listedfiles=$(ls dbms)
else
echo "creating one"
mkdir dbms
cp -r new dbms
listedfiles=$(ls -R dbms)
fi
echo "filename is ${filename} and files in this folder is ${listedfiles} "

