#!/bin/bash

# 定义项目的根目录绝对路径
PROJECT_ROOT="/home/jim/gitrepo/cn2tw_notes"

# 切换到 _book 目录
cd "$PROJECT_ROOT/_book"

# 检查是否在 gh-pages 分支上
git checkout gh-pages

# 添加所有更改
git add .

# 提交更改
git commit -m 'gitbook for book.cn2tw.online'

# 推送到远程 gh-pages 分支
git push --set-upstream origin gh-pages


