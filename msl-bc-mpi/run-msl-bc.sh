#!/bin/bash
echo "------------------------------------------------"
echo "MPI based Parallel Partition centric Implementation of Betweenness Centrality"
echo "------------------------------------------------"

echo "metis <file> <num partitions>"
gpmetis ./4elt.graph 2

echo "Running on two graph partitions"
echo "mpirun -np 2 ./ebetwn <extract_cnt> <stable_check_cnt> <batch_size> <input_graph> <partition_file> <leaf_compress>"
mpirun -np 2 ./ebetwn 10 3 5 ./4elt.graph 4elt.graph.part.2 1
