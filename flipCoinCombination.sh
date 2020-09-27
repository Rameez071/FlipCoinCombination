#!/bin/bash -x

read -p "how many times you want to flip the for triple combination ? " flips_for_triplet

#dictionary declaretion

declare -A TripletDictionary

#Variables
heads=0
tails=0

FLIP=$(($((RANDOM%10))%2))

#loop for triplet combination of coins
for i in `seq $flips_for_triplet`
do
        tripletFlip=$(($((RANDOM%8))+1))
        case $tripletFlip in
                1)TripletDictionary["key$i"]=`echo "HHH"`;;
                2)TripletDictionary["key$i"]=`echo "HHT"`;;
                3)TripletDictionary["key$i"]=`echo "HTH"`;;
                4)TripletDictionary["key$i"]=`echo "THH"`;;
		5)TripletDictionary["key$i"]=`echo "TTH"`;;
                6)TripletDictionary["key$i"]=`echo "THT"`;; 
		7)TripletDictionary["key$i"]=`echo "HTT"`;;
		8)TripletDictionary["key$i"]=`echo "TTT"`;;
		*)TripletDictionary["key$i"]=`echo "NA"`;;
        esac
done

#display triplet dictionary and its percentage
echo "Dictionary to show Triplet Combination : ${TripletDictionary[@]}"
triplet_count=${#TripletDictionary[@]}
triplet_percent=`awk 'BEGIN{printf("%0.2f", '$triplet_count'*100)}'`
echo "Triplet Percentage : $triplet_percent%"
