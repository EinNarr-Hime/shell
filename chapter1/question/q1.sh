#! /bin/bash

:<<'#COMMENT_OUT'
  問題1(P34)
  files.txtから「.exe」の拡張子を持つファイルのみを抽出する。
  ベストプラクティス: grepを利用しない方法もで来たら検討する。
#COMMENT_OUT

# 解答
# find ~/localDev/shell_work -name 'files.txt' -type f -print0 | xargs -0 grep "\.exe$"
