#!/bin/bash

# 2章1節シェルと変数

echo "---------2-1-b------------"
# 2-1-b
a="ほげほげ"
# 変数参照
echo ${a}
# 文字列連結
echo "${a}わーるど"
echo "--------------------------"

# 2-1-c : 変数の文字列操作
echo "---------2-1-c------------"
a="私は"
b="俳優よ"
# 小門1
c=${a}${b} ; echo ${c}
# 小門2
a+=${b} ; echo ${a}
# 小門3
# {a:0:1} -> aの文字列の0番目から1文字分抽出する
b=${a:0:1}${a:2:2} ; echo ${b}
# 小門4
# {a/"置換対象文字列"/"置換後文字列"}
c=${a/"俳優"/"排骨麺"} ; echo ${c}
echo "--------------------------"

# 2-1-d : 算術式展開
echo "---------2-1-d------------"
a=6
b=2
echo $((a+b)) $((b-a)) $((a*b)) $((a/b)) $((b<<a))
echo "--------------------------"

# 2-1-e : クォートと変数
echo "---------2-1-e------------"
p='pen'
re=""
# 小門1
echo $p "$p" '$p'
# 小門2
echo "This is a $p." 'That is a $p.'
# 小門3
echo "This is a ${p}cil." That is a "$p"cil. "That was a $pcil."
# 小門4-1
grep "$re" /etc/passwd
# 小門4-2(エラーになる)
# grep $re /etc/passwd
echo "--------------------------"

# 2-1-f 配列と連想配列
echo "---------2-1-f------------"
# aという配列を作る宣言
a=( "$SHELL" "$LANG" "$USER")

# bという連想配列を作る宣言
typeset -A b
b=("SHELL" "${SHELL}" "LANG" "${LANG}" "USER" "${USER}")

echo ${a[1]}
echo ${b["SHELL"]}
echo "--------------------------"