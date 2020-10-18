#! /bin/bash

random=$((RANDOM%2))
if [  $random -eq 1 ]
then
echo "head as Winner"
else
echo "tail as Winnner"
fi


