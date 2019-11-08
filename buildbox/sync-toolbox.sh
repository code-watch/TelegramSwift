#/bin/sh
#set -x
#set -e

export PATH="$PATH:$HOME/.credentials"
source variables.sh

cd ..

if [ ! -d "./deploy" ]; then
    git clone "$deploy_repository" deploy
else
    git reset --hard --git-dir=./deploy/.git
    git --work-tree=./deploy --git-dir=./deploy/.git pull origin master
fi

