#/usr/bin/env bash
###########################
# Written by: Ron Negrov
# Date: 3/21/2025
# Purpose: A tool that is made to setup an labratory with a format. 
# Version: 0.0.2
###########################


library=./lib/negbook.sh
mkdir -p ./lib
if [[ ! -f "$library" ]]; then
    curl -o "$library" https://raw.githubusercontent.com/ronthesoul/negbook/main/negbook.sh
fi
source "$library"

main() {
    read -p "What is the name of your project? " project_name
    read -p "Where should the project be created? " raw_path
    project_path=$(realpath -m "$(eval echo "$raw_path")")
    cd "$project_path" || { echo "Path does not exist"; exit 1; }
    read -p "Initialize Git repository? [Y/n] " git_enabled
    full_path="$project_path/$project_name"
    if [[ ! -e $full_path ]]; then
    mkdir -p "$full_path"
    fi
    cd "$full_path" || { echo "Error in creating root project folder"; exit 1; }
    build_folders_files 1 "$project_name"

    if [[ "$git_enabled" == "Y" || "$git_enabled" == "y" ]]; then
        git init >/dev/null 2>&1
        echo "Git repository initialized."
    fi

    echo "Project $project_name created at $project_path"
}

function build_folders_files() {
    local format=$1
    local project_name=$2

    case $format in
        1)
            mkdir -p "src" "lib" "config"
            touch "src/app.py"
            touch "lib/.placeholder"
            touch "config/.placeholder"
            touch "README.md" ".gitignore" "CONTRIBUTORS.md"
            ;;
        *)
            echo "Format not found"
            exit 1
            ;;
    esac
}

main
