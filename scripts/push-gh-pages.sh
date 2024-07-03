#!/bin/bash
# 定义项目的根目录绝对路径
PROJECT_ROOT="/home/jim/gitrepo/cn2tw_notes"

# 切换到目录
cd "$PROJECT_ROOT/"

# 检查是否在 gh-pages 分支上
git checkout gh-pages
#gitbook install
# 输出目录
gitbook build . docs

# 自訂檔(docs下會被覆蓋）
#cp -fr styles docs/
#cp -f book.json docs/
/bin/cp -f CNAME docs/
/bin/cp -f logo.png  docs/gitbook/gitbook-plugin-theme-fexa/logo.png
/bin/cp -f .gitignore  docs/

# 添加所有更改
git add .

# 提交更改
git commit -m 'gitbook for book.cn2tw.online'

# 推送到远程 gh-pages 分支
git push --set-upstream origin gh-pages --force

#git push -u origin gh-pages --force

