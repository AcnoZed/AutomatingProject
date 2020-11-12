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
}

cDir 
mkDirAndcDir $1
newReadmeGitInit