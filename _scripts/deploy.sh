#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
    # Initialize a new git repo in _site, and push it to our server.
    cd resources
    git init
        
    git remote add deploy "root@165.227.162.254:/var/repo/travis.git"
    git config user.name "KIMB0"
    git config user.email "kimsen1992@gmail.com"
    
    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't master."
fi  