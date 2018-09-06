#!bin/ksh

curl -H "Authorization: token ${1}" https://api.github.com

git clone https://github.com/morganing/alminio.git scripts/npm

cp -r src/alminio scripts/npm

git commit -am "Auto-update from Travis CI"

 git push origin HEAD:master
