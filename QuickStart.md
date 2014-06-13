Extracting High Centrality Nodes in Distributed Graphs
=======================================================
 
Centrality indices based on the position of the vertices in the graph (e.g. those based on shortest paths such as the betweenness centrality) provide an important measure of identifying high value or critical vertices in a graph. Identifying such vertices has various applications in domains such as road network, computer networks (identify potential traffic bottlenecks), social graphs (identify most influential people) etc.
However, calculating exact betweenness centrality values for all vertices in large graphs is prohibitively expensive (O(m*n + n2 log n)). Further, more often, the domain applications are interested in finding only the vertices with high centrality and in some cases relative ranking among those vertices. 
Following is a distributed partition-centric algorithm for extracting high centrality vertices in large graph.

This document provides a quick guide to setting up and running our distributed implementation of the algorithm using Boost MPI. For details of the algorithm please refer to our paper [1].

Quick Start With Development VM 
-------------------------------
Download VM config from here (http://losangeles.usc.edu/usc-cloud/goffish/parallel-extract-bc.tar.gz)

Setting up 
----------

Install Virtual Box 4.3.8. Get it from here(virtul box link).

* Install and configure Vagrant

	sudo apt-get install vagrant

* (Optional) Add Vagrant plugin that keeps Virtual Box Guest Additions in sync.

	vagrant plugin install vagrant-vbguest

* Extract the vagrant development environment and start it.
	Unzip parallel-extract-bc.zip
	cd parallel-extract-bc
	vagrant up

* Wait for vagrant to configure the VM.

Running
-------
* ssh into the vagrant vm
	vagrant ssh

* Source code is and sample data sets are located in /vagrant/code/ msl-bc-mpi directory. 
	cd /vagrant/code/ msl-bc-mpi

* Sample small graph is located in this directory.
4elt.txt - graph in edge list format. 
4elt.graph - graph in metis graph format. 

* Compile the program by running make 

* Next, run run-msl-bc.sh script to run the algorithm on the sample dataset. This will first partition the graph into two partitions using metis and then run the algorithm.

	./run-louvain.sh

Executing this script with run the algorithm in two MPI processors and output the highest 10 centrality vertices in the graph.


[1] Alok Gautam Kumbhare, Marc Frincu, Viktor Prasanna, Cauligi Raghavendra, Efficient Extraction of High Centrality Vertices in Large Distributed Graphs, HPEC 2014.
