#!/usr/bin/yash

array r "A" "B" "C" "D"

for i in 4 3 2 1
do
     # 生成一个j,使得1 ≤ j ≤ i
     j=$(head /dev/urandom | tr -dc 1-4 | head -c1)
     until  [ "$j" -le "$i" ] && [ "$j" -ge 1 ]
     do
        j=$(head /dev/urandom | tr -dc 1-4 | head -c1)
     done
     # 交换r[i]和r[j]
     tmp="${r[j]}"
     array -s r "$j" "${r[i]}"
     array -s r "$i" "$tmp"
done

clear
echo "-------------------------------"
echo "     随机选择题选项生成器"
echo "           ver 0.1"
echo "-------------------------------"
echo
echo -e -n "打乱前\t"
echo "A" "B" "C" "D"
echo -e -n "打乱后\t"
echo "${r[@]}"
#echo -e -n "答案\t"
#choice=$(head /dev/urandom | tr -dc A-D | head -c1)
#echo "$choice"
echo
