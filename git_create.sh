#!/bin/bash
for dir in /Users/frdbecc/Sites/*/
do
cd $dir
git checkout automatic
git commit -a -m "autoupdate `date +%F-%T`"
done
