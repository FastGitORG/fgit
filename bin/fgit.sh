#!/bin/bash
# author:xkeyC
# url:github.com/xkeyC

# Check Parameter
if [ "$1" == "" ];then 
    echo "Error: Please follow the github URL behind \`fgit\`!"
    exit 0
fi

# Check URL
if [[ "$1" != *"github.com"* ]]
then
echo "Error: $1 isn't a github URL!"
fi

# Replace url And Call git
git clone ${1/"github.com"/"hub.fastgit.org"}
