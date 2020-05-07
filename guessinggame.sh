#!/usr/bin/env bash


function user_guess {
	echo "How many files are there in the current directory? Take a guess."
	read response
    files=$(ls -1 | wc -l)
}

user_guess

while [[ $response -ne $files ]]
do
	if [[ $response -lt $files ]] 
	then
		echo "Your guess is too low."
	else
		echo "Your guess is too high."
	fi
	user_guess
done

echo "Congratulations! Your guess is correct."


