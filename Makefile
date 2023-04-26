TARGET := k05c
SRC := $(TARGET).c
OBJ := ../$(TARGET).o

CFLAGS := -g -Wall
LFLAGS := -lm
CC := gcc $(CFLAG) $(LFLAGS)

all : $(TARGET)

$(TARGET): $(OBJ) 
	$(CC) -o ../$@ $^ $(LFLAGS)

$(TARGET).o: $(SRC) 
	$(CC) -o ../$(TARGET).o -c $^
	
clean:
	rm -f ../$(TARGET) ../$(OBJ)

