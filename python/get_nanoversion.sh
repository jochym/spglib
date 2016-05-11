#!/bin/bash

br=`git branch |tail -n1`
read o u f <<< `git remote -v |grep fetch`
git clone $u TTTT
cd TTTT
echo $u $br
git checkout $br
git describe --tags --dirty | sed -e 's/\([.0-9]*\)-\(.*\)-g.*/\2/' -e 's/^v//g' >../__nanoversion__.txt
