#!/bin/bash

function create() {
		mkdir $(pwd)/$1
    python3 /home/ninh/workspace/scripts/ProjectInitializationAutomation/create.py $(pwd)/$1 $1
    cd $(pwd)/$1
    git init
    git remote add origin git@github.com:ninhnguyen375/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code-insiders .
}
create $1
