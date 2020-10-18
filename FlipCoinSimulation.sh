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




#! /bin/bash

head=0
tail=0
for(( i=1;i<=50;i++))
do
if [ $(( RANDOM%2 )) -eq 1 ]
then
echo "head"
head=$(( $head  + 1 ))
else
echo "tail"
tail=$(( $tail  + 1 ))

if [ $head -eq 21 ]
then
echo "head is the winner"
difference=$(( $head - $tail ))
break
fi
if [ $tail -eq 21 ]
then
echo "tail is the winner"
difference=$(( $tail - $head ))
break
fi
if [ $tail -eq $head ]
then
echo "both are tie"
fi
fi
done
echo "$tail times tail"
echo "$head times head"







