# 随机选择题选项生成器

使用Linux的`/dev/urandom`提供的熵打乱ABCD四个字符，是[《业余无线电操作技能考核攻略本（类别：A、B、C）》](https://github.com/mike2718/ham)写作过程中的副产物。

## 执行例子

```
$ ./mcq.sh
        随机选择题选项生成器

打乱前  ABCD
        ↓↓↓↓
打乱后  CBAD
```

## 依赖

- [Zsh](https://www.zsh.org/)

