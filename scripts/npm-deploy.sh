#!bin/ksh

#curl https://api.github.com/?access_token=$1

#git clone https://github.com/morganing/alminio.git scripts/npm

#cp -a src/alminio/. scripts/npm/

#cd scripts/npm

#git add .

#git commit -m "Auto-update from Travis CI"

#git push origin HEAD:master
 
#cd ../..

mkdir scripts/npm

cd scripts/npm

git init

git pull https://${1}@github.com/morganing/alminio.git

cp -a src/alminio/. scripts/npm/

git add .

git commit -m "Auto-update from Travis CI"

git push https://${1}@github.com/morganing/alminio.git


