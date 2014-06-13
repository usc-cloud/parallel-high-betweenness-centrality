#!/bin/bash

CC=mpic++
OPT_FLAG=-O5
CFLAGS= -ansi $(OPT_FLAG) -Wall
LDFLAGS= -ansi -lboost_mpi -lboost_serialization -lboost_graph_parallel -lboost_system -Wall
EXEC=ebetwn
OBJ1=ebetwn.o

all: $(EXEC)

ebetwn: ebetwn.o
	$(CC) -o $@ $^ $(LDFLAGS)

##########################################
# Generic rules
##########################################

%.o: %.cpp %.h
	$(CC) -fopenmp -o $@ -c $< $(CFLAGS)

%.o: %.cpp
	$(CC) -fopenmp -o $@ -c $< $(CFLAGS)

clean:
	rm -f *.o *~ $(EXEC)
