find_avg(){
len=$#
sum=0
for i in $@
do
	sum=$(( sum + i ))
done
avg=$(( sum / len ))
printf "%f" "$avg"
printf "\n"
return $avg
}

find_avg 10 20 30 40 43
printf "%f" "$?"
printf "\n"
