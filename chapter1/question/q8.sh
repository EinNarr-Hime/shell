#! /bin/bash
# プロジェクトルートで実行前提


FILE_PATH="./shellgei160/qdata/8/access.log"
cat $FILE_PATH | awk -F: '{print $(NF-2)}' | awk '$1<12{print "午前"} $1>=12{print "午後"}' | sort | uniq -c

<< COMMENTOUT
  よくわからないところ
  ・ awkの文法
  ・ awkのスクリプト内での変数参照方法
  ・ sortの使い方
  
  わかったところ
  ・ uniq -c : 重複を弾いてカウントする。
COMMENTOUT