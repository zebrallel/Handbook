#!/bin/bash

msg(){
  echo -e "\033[32m $1 \033[0m"
}
error(){
  echo -e "\033[31m $1 \033[0m"
}

msg "start building..."
echo ""
# update lmap and lmap-react
LIBS_DIR="src/libs"

msg "update libs..."
command git --git-dir="${LIBS_DIR}/lmap/.git" --work-tree="${LIBS_DIR}/lmap" pull && git --git-dir="${LIBS_DIR}/lmap-react/.git" --work-tree="${LIBS_DIR}/lmap-react" pull 

command npm run build || {
  echo ""
  error "Build failed!"
  exit 1
}

cp -R dist dist_cp

command npm run share-build || {
  echo ""
  error "Share-build failed!"
  exit 1
}

mv dist/index.html dist/share.html
cp -R -f dist_cp/. dist
rm -rf dist_cp

echo ""
msg "build success!"