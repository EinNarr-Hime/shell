#! /bin/bash

# shell_workディレクトリから実行
# files.txtというファイルを検索してパスを表示する
find ./shellgei160 -name files.txt
# (別解)
find shellgei160/ | grep files.txt