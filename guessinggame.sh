#!/bin/bash
function checkGuess {
	if [[ $1 -gt $2 ]]
	then
		echo "Go lower, your guess is too high."
	elif [[ $1 -lt $2 ]]
	then
		echo "Go higher, your guess is too low."
	fi
}

echo "How many files are in the current directory?"
correctGuess=$(ls -l -a | grep -E "^-.*" | wc -l)

read userGuess

while [[ $userGuess -ne $correctGuess ]]
do
	checkGuess $userGuess $correctGuess
	read userGuess 
done

if [[ $userGuess -eq $correctGuess ]]
then
	echo "Congratualtions, you guessed it!"
fi
