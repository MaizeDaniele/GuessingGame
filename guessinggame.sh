#! bin/usr/env bash
#function name
function guessinggame {

	#Initializing variables
	guess=0
	sentinel=0
	number=$(ls -l $PWD | wc -l)
	
	#removing the first line in the result of ls -l
	let number=$(($number - 1))
	
	echo "can you guess the number of file in this directory?"
	#starting the loop
	while [[ $sentinel -ne 1 ]]
	do
		echo "Please enter a number:"	
		
		#I presume that the user will enter a number and not a character
		read guess
		
		#if statement
		if [[ $guess -eq $number  ]]
		then
			echo "congratulation, your guess was right!"
			let sentinel=1
		elif [[ $guess -gt $number ]]
		then
			echo "Your guess was too high!"
		else
			echo "Your guess was too low!"
		fi
	done
}



guessinggame
