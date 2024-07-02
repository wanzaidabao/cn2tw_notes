#!/bin/bash

# 定义项目的根目录绝对路径
PROJECT_ROOT="/home/jim/gitrepo/cn2tw_notes/"

# 构建 Jekyll 网站
cd "$PROJECT_ROOT"
bundle exec jekyll build

# 切换到 _site 目录
cd "$PROJECT_ROOT/_site"

# 初始化一个新的 Git 仓库
git init
git checkout -b gh-pages

# 添加并提交更改
git add .
git commit -m "Deploy Jekyll site to gh-pages"

# 推送到远程仓库
git remote add origin git@github.com:wanzaidabao/gitbook.git
git push -u origin gh-pages --force
