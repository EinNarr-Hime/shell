#! /bin/bash

FILE_PATH="./shellgei160/qdata/9/log_range.log"

<< COMMENTOUT
  1: 1...10まで出力(seq)
  2: 1...10 -> 1,2,3,4,0に変換(awk)
  3: 2にマッチして次に4にマッチするまで出力(sed)
COMMENTOUT
seq 10 | awk '{print $1%5}' | sed -n '/2/,/4/p' | xargs

# ..で省略表現ができる？
cat $FILE_PATH | sed -n '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../p'

# 別解
cat $FILE_PATH | awk '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../'