Application Setup Task

As part of DevOps team, it is upon you to maintain project structure, deployment and health. as such while starting new project, you must define rules on safe/protected branches, provide working, safe, multi-plaform and correct ways tp to setup the project on the new developers machine, as well as maintain documentation on setting up tools for using project as intendend by the Development team.

Create Github project named application-template

Make main branch protected
Test that is project
Enable updating branch only through PR
Setup application project based on python3

Use shell script to verify that all required tools are installed
in case they are NOT, provide option to install and configure them
list of tools:
python3
python3-pip
python3-pipx
python3-venv or pipenv or poetry (which ever you prefer or would like to learn)
python3
makeself
sqlite3
virtualbox or vmware or kvm (which ever you prefer or would like to learn)
Create virtual machine based on your prefered linux distro
mount the project onto the virtual machine
run the script and test it
Use virtual environment tools to maintain python3 dependencies of the project
list of packages for the project:
flask
flask-sqlalchemy
flask-alchemyview
bootstrap-flask
quart
db-sqlite3
Setup virtual environment in virtual machine you have mounted the project into it.
connect to virtual machine via ssh plugin of vscode
