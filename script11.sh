echo -n "Enter the left end: "
read le
echo -n "Enter the right end: "
read re

is_prime(){
	if [ $1 -lt 2 ]
	then 	
		return 
	fi
	ctr=0
	for((i=2;i<$1;i++)){
		if [ $(( $1 % i)) -eq 0	]
		then
			ctr=$(( ctr + 1 ))
		fi
	}
	if [ $ctr -eq 0	]
	then
		printf "%d," "$1"
	fi
}

printf "The prime numbers between %d and %d \n" "$le" "$re"
for ((i=le;i<=re;i++)){
	is_prime $i
}
printf "\n"
