#!/bin/bash
# Samuel Cuthbertson
if [ -e $1 ] && [ $# -gt 0 ]; then
  egrep "[0-9]$" $1 | wc -l
  egrep "^[^aeiouAEIOU]" $1 | wc -l
  egrep "^[a-zA-Z]{12}$" $1 | wc -l
  egrep "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" $1 | wc -l
  egrep "^303-[0-9]{3}-[0-9]{4}$" $1 | wc -l
  egrep "^[aeiouAEIOU].+[0-9]$" $1 | wc -l
  egrep "@geocities.com" $1 | wc -l
  emails=$(egrep "@" $1 | wc -l)
  correctemails=$(egrep "[A-Z0-9a-z\.\-]+@[A-Za-z0-9\.\-]+\.[A-Za-z]{2,6}" $1 | wc -l)
  echo $((emails - correctemails))
else
  echo "Usage: RegexAnswers.sh filename"
fi
