#!/usr/bin/env bash
# Copyright (C) 2020 - 2022 Muhammad Fadlyas (fadlyas07)
# SPDX-License-Identifier: GPL-3.0-or-later

git config --global user.name "$GH_USERNAME"
git config --global user.email "$GH_EMAIL"

git clone -j136 --single-branch "https://fadlyas07:$GH_TOKEN@github.com/greenforce-project/llvm-project/" -b main $(pwd)/llvm-project
while true; do
    cd $(pwd)/llvm-project
    git pull https://github.com/llvm/llvm-project main
    git push -f
done
