#! /bin/bash

FILE_PATH="./shellgei160/qdata/11/gijiroku.txt"
cat $FILE_PATH | xargs -n2 | sed -e 's/^すず/鈴木/' | sed -e 's/^さと/佐藤/'  | sed -e 's/^やま/山田/' | sed -e 's/ /:/' | sed -e 's/$/\n/'

#もっと綺麗に
cat $FILE_PATH |  xargs -n2 | sed -e 's/^すず/鈴木/; s/^さと/佐藤/; s/^やま/山田/; s/ /:/; s/$/\n/'

# 別解

cat $FILE_PATH