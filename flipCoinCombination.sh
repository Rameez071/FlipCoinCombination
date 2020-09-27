#!/bin/bash -x

declare -A doubleDict
for j in {1..100}
do
	val1=$(((RANDOM%2)) );
	val2=$(((RANDOM%2)) );
	value=$val1$val2;

	if [ "$value" == "HH" ]
	then
		hhCounter=$((hhCounter+1));
	elif [ "$value" == "HT" ]
	then
		htCounter=$((htCounter+1));
	elif [ "$value" == "TH" ]
	then
		thCounter=$((thCounter+1));
	else
		ttCounter=$((ttCounter+1));
	fi

	doubleDict[$j]=$value;
done

hhpercent1=`echo $hhCounter | awk '{print $1/100}'`;
hhpercent2=`echo $hhpercent1 | awk '{print $1*100 }'`;

ttPercent1=`echo $ttCounter | awk '{print $1/100}'`;
ttPercent2=`echo $ttPercent1 | awk '{print $1*100}'`;

thPercent1=`echo $thCounter | awk '{print $1/100}'`;
thPercent2=`echo $thPercent1 | awk '{print $1*100}'`;

htPercent1=`echo $htCounter | awk '{print $1/100}'`;
htPercent2=`echo $htPercent1 | awk '{print $1*100}'`;

echo "Percentage For Double Heads = "$hhpercent2"%";
echo "Percentage For Double Tails = "$ttPercent2"%";
echo "Percentage For HT = "$htPercent2"%";
echo "Percentage for TH = "$thPercent2"%";

echo "${doubleDict[@]}";
