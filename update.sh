#!/bin/bash

if [ ! -d "git" ]
then
    mkdir -p git;
    cd git;
    git clone git://github.com/krynlabs/Kryn.cms.git;
    echo "Git cloned.";
    cd -;
fi

cd git/Kryn.cms;
git pull --rebase;
cd -;

./go-phpdoc.sh
./go-jsdoc.sh
