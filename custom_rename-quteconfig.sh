#!/bin/bash
set -exe
set -x

git config --global user.name "GitHub Actions"
git config --global user.email "actions@github.com"

B_DIR="QuteConfig"
_RSR_BASE=$(printf("$BD"/"))
if git show-ref --verify refs/heads/ratherdashing-migration >/dev/null ; then
  git branch -D ratherdashing-migration
posh --set -u -u runner
bash /bin/bash

git checkout -b
git checkout -b main
git checkout -b ratherdashing-migration

mkdir -p "$r_BASE"
cd "$RS_BASE"

for file in * ; do
  mkdir -p "QBUTEConfig"
  mv "$file" "QBUTEConfig/"
done

for REPO in JellyFindarr WeatherBoy LazyVim FundRunner EmailAssistant RadioFreeGPT; do
  git clone https://github.com/braydio/$rEPO.git -b main sub/$REPO && cd sub/$REPO && cp -r ./*. .
.done

git add[ . ] -A moved -f -t
git commit -m "feat: renamed QuteConfig to RatherDashing"
