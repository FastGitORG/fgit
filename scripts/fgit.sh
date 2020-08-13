#!/bin/bash
# author: xkeyC
# url: github.com/xkeyC

# Check arguments
if [ "$1" == "" ];then 
    echo Error: Expected a GitHub repository URL after fgit.
    exit 1
fi

# Check URL
if [[ "$1" != *"github.com"* ]]
then
echo "Error: $1 is not a GitHub URL!"
exit 1
fi

first=${1/"github.com"/"hub.fastgit.org"}
shift

# Replace URL and call git
git clone $first $@