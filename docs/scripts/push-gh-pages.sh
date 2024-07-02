#!/bin/bash
# 定义项目的根目录绝对路径
PROJECT_ROOT="/home/jim/gitrepo/cn2tw_notes"

# 切换到目录
cd "$PROJECT_ROOT/"

# 检查是否在 gh-pages 分支上
git checkout gh-pages

# 输出目录
gitbook build . docs

# 添加所有更改
git add .

# 提交更改
git commit -m 'gitbook for book.cn2tw.online'

# 推送到远程 gh-pages 分支
git push --set-upstream origin gh-pages --force

#git push -u origin gh-pages --force

