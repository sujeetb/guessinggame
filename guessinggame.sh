#!/usr/bin/env bash

echo "How many files are there in the current directory? Take a guess."
read response


function actual_number {

	local filesizee=$(ls -l | wc -l)-1
	echo $filesizee	
}

correctnumber=$(actual_number)

while [[ $response -ne $correctnumber ]]
do
	if [[ $response -lt $correctnumber ]] 
	then
		echo "Your guess is too low."
	else
		echo "Your guess is too high."
	fi
	
	echo "How many files are there in the current directory? Take another guess."
	read response
	
done

echo "Congratulations! Your guess is correct."


