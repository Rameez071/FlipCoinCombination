#!/bin/bash -x

echo "welcome to flip coin games"

toss=$((RANDOM%2))
declare -A  singletDictionary

if [ $toss -eq 0 ]
then
     echo  head
else
     echo tail
fi
for (( i=0; i<9; i++ ))
do
  toss=$((RANDOM%2))
  if [ $toss -eq 0 ]
  then
       singletDictionary[head]=$((${singletDictionary[head]}+1))
  else
       singletDictionary[tail]=$((${singletDictionary[tail]}+1)) 
  fi
done

echo "${singletDictionary[@]}"
echo "${!singletDictionary[@]}"

headper=$((${singletDictionary[head]}*100/i))
tailper=$((${singletDictionary[tail]}*100/i))

echo $tailper
echo $headper
