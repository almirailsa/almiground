#!bin/ksh

mkdir scripts/npm

cd scripts/npm

git init

git pull https://${1}@github.com/morganing/alminio.git

cp -a ../../src/alminio/. .

git add .

git commit -m "Auto-update from Travis CI"

git push --set-upstream https://${1}@github.com/morganing/alminio.git master
