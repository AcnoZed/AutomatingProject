#!/bin/bash
#

# Function changes to MyProjects Directory
function cDir() {
  echo "Starting Script..."
  echo "Changing Directory!"
  cd /home/acno/Dokumente/Projects/MyProjects/
}
fucntion mkDirAndcDir() {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

cDir 
mkDirAndcDir $1