#! /bin/sh

# ワークスペースへ移動
cd ~/localDev/shell_work/chapter1

# ファイル出力
echo HelloWorld > hello.txt

# ディレクトリ作成
mkdir temp

# ファイル移動
mv hello.txt temp/

# ディレクトリ削除(ファイルごと)
rm -r temp

echo Process Completed!