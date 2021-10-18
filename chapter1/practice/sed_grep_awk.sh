#! /bin/bash

# sedコマンドのサンプル集

# output -> クロロメチルエチルエーテル
echo Q1 \> クロロエチルエチルエーテル | sed 's/エチル/メチル/'
# output -> クロロエチルメチルエーテル
echo Q2 \> クロロエチルエチルエーテル | sed 's/エチル/メチル/2'
# output -> クロロメチルメチルエーテル
echo Q3 \> クロロエチルエチルエーテル | sed 's/エチル/メチル/g'
# output -> クロロエチルエチルエーテル
echo Q4 \> クロロエチルエーテル | sed 's/エチル/&&/'
# output -> クロロエチルメチルエーテル
echo Q5 \> クロロメチルエチルエーテル | sed -E 's/(メチル)(エチル)/\2\1/'


# grepコマンドのサンプル集

# 100までの偶数表示
seq 100 | grep "[02468]$" | xargs
# 100までの奇数表示
seq 100 | grep "[^02468]$" | xargs
# output -> 最後に田がつく苗字のやつ
# Check: [^ 何か] 何か以外の一文字という意味になる(否定系)
echo 中村 山田 田代 上田 | grep -o '[^ ]田' | xargs

# awkコマンドのサンプル集

# 偶数表示
seq 5 | awk "/[02468]/" | xargs
# 偶数表示(if文)
# Check: シングルクォーテーションで囲まないとエラーになる
seq 5 | awk '{if($1%2==0){printf("%s:偶数\n",$1)}}'
# 偶数・奇数
seq 5 | awk '{if($1%2==0){printf("%s:偶数\n",$1)}else{printf("%s:奇数\n",$1)}}'
# 合計表示
# Check: BEGIN(処理前処理)・END(処理後処理)
seq 5 | awk '
  BEGIN{sum=0}
  {
    if($1%2==0){
      printf("%s: 偶数\n",$1)
    }
    else{
      printf("%s: 奇数\n",$1)
    }
  }
  {sum+=$1}
  END{printf("%s: 合計\n",sum)}
'
# bashを外すと mkdir odd_1,,,が出力されるだけ
# bash をつけるとコマンドとして実行され、フォルダが作成される
seq 4 | awk '{print "mkdir " ($1%2 ? "odd_" : "even_")$1}' | bash
# 削除
seq 4 | awk '{print "rm -rf " ($1%2 ? "odd_" : "even_")$1}' | bash