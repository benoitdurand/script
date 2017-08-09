#!/bin/bash
for dir in /Users/frdbecc/Sites/*/
do
cd $dir
echo $dir
rep=$(pwd | awk -F/ '{ print $(NF) }') 
git remote add origin git@github.com:benoitdurand/$rep.git
echo $rep
git push -u origin master

done
