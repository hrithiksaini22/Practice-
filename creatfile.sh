#!/bin/bash

mkdir 1 2
cd 1
touch 11.txt 
echo "first file">1.txt
cd ..

cd 2
touch 22.txt
echo "second file">2.txt

echo $BASH

