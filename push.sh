#!/bin/bash
echo "Start build the hugo web."
hugo -d docs

echo "Start update the remote repo."
git add -A
git commit -m "Commit info: $1"

git push origin master

echo "=========================== OK ==========================="