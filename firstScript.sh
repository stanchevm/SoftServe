#!/bin/bash
#echo "Hello World"
#CDIR="BASH_TRASH"
#echo "Creating Directory...$CDIR"
#mkdir $CDIR
#3cp * $CDIR
#rm -rf $CDIR
#var='test string'
#newvar='Value of var is $var'
#echo $newvar
#echo $SHELL
#echo $PATH
#echo -n "Please enter your name: "
#read name
#echo "Hello $name"
#echo $#
#let x=10+2*4
#echo $x
#echo "$((10+40))"
#val=$[20+40]
#echo "$[10*$val]"
#echo -n "Enter your login name: "
#read name
#if [ "$name" = "$USER" ];
#then
#	echo "Helloo $name"
#else 
#	echo "You are not $USER, so who are you?"
#fi
#COUNTER=0
#sum=0
#ONEHUNDER=101
#while [ "$sum" -lt 101 ]  
#do
#	let COUNTER=$COUNTER+$sum
#	let sum=$sum+1
#done
#echo "$COUNTER"
#!/bin/bash
mkdir MyDirectory
if [ $? -ne 0 ] ; then 
 echo "fatal miro"
else 
 echo "success"
fi
read -p "set your username " USERNAME
read -p "set your email " USEREMAIL
git config --global user.name"$USERNAME"
git config --global user.email"$USEREMAIL"
read -p "Commit description: " desc
git init
git add .
git commit -m "$desc" 
git remote add origin https://github.com/stanchevm/SoftServe.git
git push -u origin master
