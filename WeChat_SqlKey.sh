#!/bin/zsh
y=$(cut -d " " -f 2,3,4,5,6,7,8,9 $1)
for i in $y
do
    z=$(echo $i | sed 's/0x\([0-9a-f]\{2\}\) *\r*/\1/g' | awk '{printf "%s",$1}' )
    x=$x$z
    
done
x=0x$x
echo $x > key
wc key
cat key
