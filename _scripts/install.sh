#!/bin/bash
set -x # Show the output of the following commands (useful for debugging)
    
# Import the SSH deployment key
openssl aes-256-cbc -K $encrypted_394c2ab74843_key -iv $encrypted_394c2ab74843_iv -in deploy_rsa.enc -out deploy_rsa -d
eval "$(ssh-agent -s)"
chmod 600 deploy_rsa
ssh-add deploy_rsa
mv deploy_rsa ~/.ssh/id_rsa