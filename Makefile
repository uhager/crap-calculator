## Makefile for crap
## author: Ulrike Hager

.SUFFIXES: .cpp
CFLAGS = -fpermissive -I ../include
GTKFLAGS = `pkg-config gtkmm-2.4 --cflags --libs`
OBJS = crap.o  crapwindows.o crapclasses.o 
crap: $(OBJS)
	g++ $(CFLAGS) $(OBJS) -o crap $(GTKFLAGS)
.c.o:
	gcc -c $(CFLAGS) $*.c -o $@ $(GTKFLAGS)
.cpp.o:
	g++ -c $(CFLAGS) $*.cpp -o $@ $(GTKFLAGS)
clean:
	rm -f *.o crap 
