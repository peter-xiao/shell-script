#!/bin/zsh
#peter-xiao
#this script is for pattern match
rm -f $1_copy
touch $1_copy
cat $1 | while read i
do
    y=$(echo $i | sed 's/[^a-z0-9@\.-]//g')
    z=$(grep $y$ $1)
    if [ "$y" != "\n" -a $(echo $z | wc -l) -eq 1 ]
    then
        echo $y >> $1_copy
    fi
done
