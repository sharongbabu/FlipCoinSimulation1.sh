#! /bin/bash

random=$((RANDOM%2))
if [  $random -eq 1 ]
then
echo "head as Winner"
else
echo "tail as Winnner"
fi


#! /bin/bash -x

head=0
tail=0
for(( i=1;i<=10;i++))
do
if [ $(( RANDOM%2 )) -eq 1 ]
then
echo "head"
head=$(( $head  + 1 ))
else
echo "tail"
tail=$(( $tail  + 1 ))

fi
done
echo "$tail times tail has won"
echo "$head times head has won"


