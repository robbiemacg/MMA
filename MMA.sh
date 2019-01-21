#!/bin/bash

#Strip single line comments, then remove all white space and new lines, then
#kill Javadoc style commments
sed 's://.*$::g' $1 | tr -d [:space:] | sed 's:/\*.*\*/::g' > File1
sed 's://.*$::g' $2 | tr -d [:space:] | sed 's:/\*.*\*/::g' > File2

echo | diff -s File1 File2

#Comment out this line for testing and to look at the resulting files
rm File1 File2
