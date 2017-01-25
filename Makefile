all: main
main: main.o HashMap.o SomeKeyHash.o
	g++ -o main main.o HashMap.o SomeKeyHash.o
	echo "Test1"
main.o: main.c HashMap.h
	g++ -o main.o -c main.c -h HashMap.h
	echo "Test2"
HashMap.o: HasMap.c HashMap.h
	g++ -o HashMap.o -c HaspMap.c -h HashMap.h
	echo "Test3"  	
SomeKeyHash.o: SomeKeyHash.c SomeKeyHash.h
	g++ -o SomeKeyHash.o -c SomeKeyHash.c -h SomeKeyHash.h 
	echo "Test4"
