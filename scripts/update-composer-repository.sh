#!/bin/bash

source config.cfg

# setting satis directories
satisbasedir=./vendor/composer/satis
cmd=bin/satis
configdir=configs
repositorybase=repositories
tempdir=temp

for file in `ls ${configdir}`; do
    repo=`echo ${file} | sed 's/.json//g'`
    echo "-> creating the environment with $repo"
    homepage=${satishost}/${repo}

    cp ${configdir}/${file} ${tempdir}
    echo "-> replacing some variables"
    sed -i "s|%homepage%|$homepage|g" ${tempdir}/${file}

    php ${satisbasedir}/${cmd} build ${tempdir}/${file} ${repositorybase}/${repo}
    echo "-> your repository url: >>>> $homepage <<<<"
done
