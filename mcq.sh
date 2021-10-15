#!/usr/bin/zsh
#
clear
printf "\n\n"
printf "     随机选择题选项生成器\n"
printf "           ver 0.2\n"
printf "\n\n"
r=(A B C D)
printf "打乱前\t"
printf '%c' "${r[@]}"
printf "\n"
for i in 4 3 2 1
do
     # 生成一个j,使得1 ≤ j ≤ i
     j="$(head /dev/urandom | tr -dc 1-4 | head -c1)"
     until [[ "$j" -le "$i" ]] && [[ "$j" -ge 1 ]]
     do
        j="$(head /dev/urandom | tr -dc 1-4 | head -c1)"
     done
     # 交换r[i]和r[j]
     tmp="${r[j]}"
     r[j]="${r[i]}"
     r[i]="$tmp"
done
printf "打乱后\t"
printf '%c' "${r[@]}"
printf "\n\n"
