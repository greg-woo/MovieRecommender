all : movie_recommender.o preferences.o distances.o 
	gcc -Iinclude movie_recommender.o preferences.o distances.o -o movie_recommender

preferences.o : src/preferences.c
	gcc -c -Iinclude src/preferences.c

distances.o : src/distances.c
	gcc -c -Iinclude src/distances.c

movie_recommender.o : src/movie_recommender.c
	gcc -c -Iinclude src/movie_recommender.c

clean : 
	/bin/rm -f distances.o preferences.o movie_recommender.o movie_recommender