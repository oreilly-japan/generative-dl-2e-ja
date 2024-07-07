#!/bin/bash
# 本shellをDockerを立ち上げた状態で実行

# 引数のリスト
args=("faces" "bricks" "recipes" "flowers" "wines" "cellosuites" "chorales")

# スクリプトを引数ごとに実行
for arg in "${args[@]}"
do
    echo "Executing download.sh with argument: $arg"
    bash ./scripts/download.sh "$arg"
    echo "Download completed for: $arg"
done
