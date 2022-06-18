#! /bin/bash

FILE_PATH="./shellgei160/qdata/10/headings.md"

# (.*)で囲んだ箇所を後段の\1で参照している。
cat $FILE_PATH | sed -E 's/^## +(.*)/\1\n---/' | sed -E 's/^# +(.*)/\1\n===/'