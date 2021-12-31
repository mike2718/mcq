#!/usr/bin/bash
clear
printf "\n\t随机选择题选项生成器\n\n"
r=(A B C D)
printf "范围\t摇到的数组下标\t划掉的字母\t结果\n"
printf "\t\t\t"
printf '%c ' "${r[@]}"
echo
for i in 3 2 1; do # 1 <= i <= 4 - 1
     # 生成一个j, 使得1 ≤ j ≤ i
     printf '%s%c\t' "1-" "$(( i + 1 ))"
     j="$(head /dev/random | tr -dc 0-3 | head -c1)"
     until [[ "${j}" -ge 0 ]] && [[ "${j}" -le "${i}" ]]; do
        j="$(head /dev/random | tr -dc 0-3 | head -c1)"
     done
     # 交换r[i]和r[j]
     tmp="${r[j]}"
     r[j]="${r[i]}"
     r[i]="${tmp}"
     printf '%c\t\t' "${j}"
     printf '%b\t\t' "\033[1m""${r[j]}""\033[0m"
     printf '%b\n' "\033[1m""${r[i]}""\033[0m"
done
echo
printf "打乱后的序列："
printf '%c ' "${r[@]}"
echo
echo
