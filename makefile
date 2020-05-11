all: README.md

README.md: 
	echo "A bash guessing game for The Unix Workbench\n" > README.md
	echo -n "\n**Date**: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md