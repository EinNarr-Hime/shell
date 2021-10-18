#! /bin/bash

# sort -> uniq -cの王道パターン
seq 5 | awk '{print $1%2 ? "奇数" : "偶数"}' | sort | uniq -c | awk '{print $2,$1}'
# 連想配列
seq 5 | awk '{print $1%2 ? "奇数" : "偶数"}' | awk '{sum[$1]++}END{for(k in sum) print k,sum[k]}'

