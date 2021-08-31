#!/usr/bin/yash

rand=$(od -N 2 -t uL -An /dev/urandom | tr -d " ")
choice=$(( 1 + rand % 4 ))

array o "A" "B" "C" "D"
array r "A" "B" "C" "D"

for i in 3 2 1
do
      j=3
#     r=$(od -N 2 -t uL -An /dev/urandom | tr -d " ")
#     c=$(( $rand % 4 ))
#     until ([c <= i] && [c >= 0])
#     do
#        r=$(od -N 2 -t uL -An /dev/urandom | tr -d " ")
#        c=$(( $rand % 4 ))
#     done
     tmp=${r[j]}
     array -s r $j ${r[i]}
     array -s r $i $tmp
done

echo -e -n "打乱前\t"
echo "${o[*]}"
echo -e -n "打乱后\t"
echo "${r[*]}"
echo
