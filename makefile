all: README_MD README1_txt  README2_txt README3_txt README.md
	
show_content: READEME.md
	@cat README.md

README3_txt:
	@echo "### 3. Created make time is: " >> README.md
	@date >> README.md

README2_txt: README.md guessinggame.sh
	@echo "### 2. The number of lines of code contained in guessinggame.sh: " >> README.md
	@cat guessinggame.sh | wc -l >> README.md

README1_txt: README.md
	@echo "### 1. The title of the project: " > README.md
	@echo "Homework to practice Bash, Make, Git, and Github" >> README.md

README_MD:
	@touch README.md

clean:
	@rm -f README.md
