#/usr/bin/env bash
###########################
# Written by: Ron Negrov
# Date: 3/21/2025
# Purpose: A tool that is made to setup an labratory with a format. 
# Version: 0.0.1
###########################


library=./lib/negbook.sh
mkdir -p ./lib
curl -o $library https://raw.githubusercontent.com/ronthesoul/negbook/main/negbook.sh
source $library 


function main(){

project_name="my_app"
project_path=/home/$USER/$project_name
git_enabled=n

read -p "What is the name of your project?" $project_name
read -p "What directory would you like to place your project in?" $project_path
read -p "Would you like to initilize a git repository? [Y/n]" $git_enabled 
   






}
















function build_folders_files(){
local format=$1
local project_name=$2
case $format in
    1)
        mkdir -p ./src/{$project_name/app.py,lib/.placeholder,config/.placeholder} 
        touch README.md .gitignore CONTRIBUTORS.md
        ;;
    *) 
        echo "Format not found"
        exit 1
        ;;
}



