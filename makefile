#https://www.youtube.com/watch?v=aw9wHbFTnAQ 

# makefile version 1.0.09.08.2018

CFLAGS=-std=c++14 -c -g -Wall

	
qsort: qsort.o
	@printf "\033[36mLinking \"qsort\"...\n\033[0m"
	g++ qsort.o -o qsort.out
	@printf "\n\033[34mRun by typing 'make run'\n\n\033[0m"

qsort.o: qsort.cpp
	@printf "\033[36mCompiling \"qsort\"...\n\033[0m"
	g++ $(CFLAGS) qsort.cpp

# ...................................................................

# get the data needed 
data:
	@mkdir -p data/
	@printf "\033[35mExtracting data from \033[33mdataset1.tar.gz\n\033[0m"
	@tar -xvf dataset1.tar.gz -C data/	
# ...................................................................
run:
	@./qsort.out

# ...................................................................

# remove temp files

clean:
	rm -f *.out *.o 


avg-res: qsort
	@printf "\033[35mGenerating results \033[33mavg-data.csv\n\033[0m"
	$(shell bash genavg > avg-data.csv)

worst-res: qsort
	@printf "\033[35mGenerating results \033[33mworst-data.csv\n\033[0m"
	$(shell bash genworst > worst-data.csv)
	
