#!/bin/bash
#

# Function changes to MyProjects Directory
function cDir() {
  echo "Starting Script..."
  echo "Changing Directory!"
  cd &&
  cd /home/acno/Dokumente/Projects/MyProjects/
}
# Creating new Dir and change into it
function mkDirAndcDir() {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}
#touch new README and git init
function newReadmeGitInit() {
  touch README.adoc
  git init
  python3 /home/acno/Dokumente/Projects/MyProjects/AutomatingProject/Create.py "$1"
}
function addingPushingToRemote() {
  git remote add origin https://github.com/AcnoZed/"$1".git
  git add .
  git commit -m "initial commit"
  git push -u origin master
}

cDir 
mkDirAndcDir $1
newReadmeGitInit $1
addingPushingToRemote $1