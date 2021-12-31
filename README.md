# 随机选择题选项生成器

使用Linux的`/dev/urandom`提供的熵打乱ABCD四个字符，是[《业余无线电操作技能考核攻略本（类别：A、B、C）》](https://github.com/mike2718/ham)写作过程中的副产物。

## 执行例子

```

        随机选择题选项生成器

范围    摇到的数组下标  划掉的字母      结果
                        A B C D
1-4     2               D               C
1-3     2               D               D
1-2     0               B               A

打乱后的序列：B A D C


```

## 依赖

- Bash

