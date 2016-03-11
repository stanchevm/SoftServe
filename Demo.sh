#!/bin/bash
git add remote origin https://github.com/stanchevm/SoftServe.git
cd "SoftServe" # enters the Directory with name SoftServe
mkdir MyDirectory # Makes a new Directory with name MyDirectory

if [ $? -ne 0 ] ; then # If statement which checks if the Directory is made 
 echo "Couldnt make the dirrectory"
else 
 echo "Success"
fi
cd "MyDirectoryDemo" # Enters the Directory with name "MyDirectoryDemo"
touch iDontKnowSPiderman.txt # Creates a file with name IDontKnowSpiderman
cd "-" #Enters the previous Directory
echo "set your username " #writes on the terminal
read USERNAME # read from the terminal and sets a variable with name USERNAME
echo "set your email " # writes on the temirnal
read USEREMAIL # read from the terminal and sets a variable with name USEREMAIL
git config --global user.name"$USERNAME" # configs the git user.name
git config --global user.email"$USEREMAIL" # configs the git user.email
echo "Commit description: " # writes on the terminal
read desc # reads from the terminal and creates a variable with name desc
git init # initialize the git
git add . # adding all files from the current repository
git commit -m "$desc" # commits in github with message from the variable given
git push -u origin master # pushesh on github
