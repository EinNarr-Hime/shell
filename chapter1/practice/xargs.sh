#! /bin/bash

# xargsのサンプル

# 1,2,3,4という名前のディレクトリを作成する
seq 5 | xargs mkdir
# 1,2,3,4という名前のディレクトリを削除する
seq 5 | xargs rm -rf
# (別解)
# seq 5 | xargs rmdir
# 1,3 -> 2,4フォルダのリネーム
# Check: xargs -n[個数] で指定した個数分次のコマンドに引数として渡す
seq 4 | xargs -n2 mv
# dir_1,dir_2,dir_3,dir_4という名前のフォルダを作成
# Check: xargs -I[変数名] その後の処理の任意の箇所で展開できる
seq 4 | xargs -Ival mkdir dir_val
# dir_1,dir_2,dir_3,dir_4という名前のフォルダを削除
seq 4 | xargs -Ival rm -rf dir_val