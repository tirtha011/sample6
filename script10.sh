echo "Enter a number: "
read x
if [ $x -eq 5 ]
then
	echo Success
	exit 0
else 
	echo Failure
	exit 1
fi
