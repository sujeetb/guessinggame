all: README.md

README.md: guessinggame.sh
	echo "A bash guessing game\n" > README.md
	echo -n "\n**Date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md