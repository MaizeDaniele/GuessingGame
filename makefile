README.md:
	echo "# guessinggame script"  > README.md
	echo "Make was run at:" >> README.md
	date >> README.md
	echo "Number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o [0-9]{2} >> README.md


