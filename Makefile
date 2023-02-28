TARGET=minivim
CXX=g++
DEBUG=-g
OPT=-O0
WARN=-Wall -Wno-unknown-pragmas
NCURSES=-lncurses -ltinfo
CXXFLAGS=$(DEBUG) $(OPT) $(WARN) $(NCURSES) -pipe
LD=g++
LDFLAGS=$(NCURSES)
OBJS= main.o minivim.o
all: $(OBJS)
	$(LD) -o $(TARGET) $(OBJS) $(LDFLAGS)
	@rm -rf *.o
 
main.o: main.cpp
	$(CXX) -c $(CXXFLAGS) main.cpp -o main.o
 
minivim.o: minivim.cpp
	$(CXX) -c $(CXXFLAGS) minivim.cpp  -o minivim.o
