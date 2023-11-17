
#!/bin/bash
hello() {
a="$1"
b="$2"
if [ "$a" -gt "$b" ]
then 
echo "a is big"
else
echo " b  is  big"
fi
}

hello "$1" "$2"
