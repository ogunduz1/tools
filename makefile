#set compiler below
CC=clang
#warnings flags below
WFLAGS=-Wall -Wextra
#compiler flags below
CFLAGS= -g -O0 
#library flags below
LFLAGS=
#executable name below
TARGET=
#c or cpp source file extensions below
LANG=c
#c or cpp header file extensions below
HLANG=h
#only modules name without extension below
#choose how many modules do you have by putting # to end of MDL number and at ALLOBJ macro
MDL1=
#MDL2=
#MDL3=
#MDL4=
#MDL5=
#MDL6=
#MDL7=

ALLOBJ=$(MDL1).o #$(MDL2).o $(MDL3).o $(MDL4).o $(MDL5).o $(MDL6).o $(MDL7).o

$(TARGET) : $(TARGET).$(LANG) $(ALLOBJ)
	$(CC) $(WFLAGS) $(CFLAGS) $^ -o $@

$(MDL1).o : $(MDL1).$(LANG) $(MDL1).$(HLANG)
	$(CC) -c $(WFLAGS) $(CFLAGS) $< -o $(MDL1).o

#$(MDL2).o : $(MDL2).$(LANG) $(MDL2).$(HLANG) 
#	$(CC) -c $(WFLAGS) $(CFLAGS) $< -o $(MDL2).o
#
#$(MDL3).o : $(MDL3).$(LANG) $(MDL3).$(HLANG)
#	$(CC) -c $(WFLAGS) $(CFLAGS) $< -o $(MDL3).o
#
#$(MDL4).o : $(MDL4).$(LANG) $(MDL4).$(HLANG)
#	$(CC) -c $(WFLAGS) $(CFLAGS) $< -o $(MDL4).o
#
#$(MDL5).o : $(MDL5).$(LANG) $(MDL5).$(HLANG)
#	$(CC) -c $(WFLAGS) $(CFLAGS) $< -o $(MDL5).o
#
#$(MDL6).o : $(MDL6).$(LANG) $(MDL6).$(HLANG)
#	$(CC) -c $(WFLAGS) $(CFLAGS) $< -o $(MDL6).o
#
#$(MDL7).o : $(MDL7).$(LANG) $(MDL7).$(HLANG)
#	$(CC) -c $(WFLAGS) $(CFLAGS) $< -o $(MDL7).o
clean:
	rm -r $(TARGET) *.o 
