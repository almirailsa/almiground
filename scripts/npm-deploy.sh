#!bin/ksh

#mkdir scripts/npm

#cd scripts/npm

#git clone https://${1}:x-oauth-basic@github.com/morganing/alminio.git

#curl https://api.github.com/?access_token=$1

#cp -a ../../src/alminio/. .

#git add .

#git commit -m "Auto-update from Travis CI"

#git push --set-upstream origin master

echo "registry.npmjs.org/:_authToken=$1" > .npmrc

tsc src/alminio/main.ts

npm publish src/alminio/

