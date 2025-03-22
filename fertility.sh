#/usr/bin/env bash
###########################
# Written by: Ron Negrov
# Date: 3/21/2025
# Purpose: A tool that is made to setup an labratory with a format. 
# Version: 0.0.3
###########################


library=./lib/negbook.sh
mkdir -p ./lib
if [[ ! -f "$library" ]]; then
    curl -o "$library" https://raw.githubusercontent.com/ronthesoul/negbook/main/negbook.sh
fi
source "$library"

main() {
distro_check_and_install pipx pip python3
package_list=()

    read -p "What is the name of your project? " project_name
    read -p "Where should the project be created? " raw_path
    project_path=$(realpath -m "$(eval echo "$raw_path")")
    cd "$project_path" || { echo "Path does not exist"; exit 1; }
    read -p "Initialize Git repository? [Y/n] " git_enabled
    read -p "Initialize a virtual environment? [Y/n] " venv_enabled
    full_path="$project_path/$project_name"
    if [[ ! -e $full_path ]]; then
    mkdir -p "$full_path"
    fi
    cd "$full_path" || { echo "Error in creating root project folder"; exit 1; }
    build_folders_files 1 "$project_name"

    if [[ "$git_enabled" == "Y" || "$git_enabled" == "y" ]]; then
        git init >/dev/null 2>&1
        echo "Git repository initialized."
     read -p "Would you like to connect your repository to a remote github repository? [Y/n] " remote_git_enabled
         if [[ "$remote_git_enabled" == "Y" || "$remote_git_enabled" == "y" ]]; then
            read -p "What is your github username? " username
            read -p "What is the name of the repository that you want to be connected to " repository
            git_connect "$username" "$repository" "$full_path"

         fi


    fi
    echo "Project $project_name created at $project_path"


 ask_user_packages package_list
 distro_check_and_install "${package_list[@]}"

if [[ "$venv_enabled" == "Y" || "$venv_enabled" == "y" ]]; then
 venv_init "$full_path"
 fi

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
