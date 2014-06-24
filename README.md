Overview
--------

Each community is comprised of several key players which have an impact on its overall behavior and play critical roles. Detecting what these players are is critical in various domains such as identifying key individuals or places when tracking criminal and terrorist activities. Our algorithm is able to quickly uncover the top n influential nodes located at major communication cross points inside a given community. It is designed to work on distributed environments making it suited for processing geographically spread data found in cloud systems.

Objectives
----------

The objective of the algorithm is to enable fast identification of top n nodes in a distributed sparse graph.

Benefits
--------
It is beneficial to data scientists seeking fast identification of top central players in large geographically distributed graph data.

Measures of effectiveness
-------------------------

The algorithm has been tested using MPI on an HPC cluster with a varying number of nodes ranging from 4 to 64 with 2 workers per node, each worker with 8 GB memory. Each node consists of two Quad-core AMD Opteron 2376 2.3 GHz processors. Speed-ups of up to 12x have been observed for synthetic and real-life sparse graphs up to 1M vertices and 3M edges.


Required Skill Sets
-------------------

* To use the algorithm on a given data set:

 * Required

  * Familiarity with Linux

  * Manipulating graph data (potentially to convert the given data to the Metis graph format)

  * Ability to run MPI programs on a single node or cluster depending on graph size

 * Good to have

  * To use the quick start guide, familiarity with Virtual Box and virtualization

  * C++

  * MPI Library

 * To setup the environment on a cluster

  * Cluster administration knowledge

  * Setting up MPI environment on cluster

How to get it
---------------

The algorithm is hosted at the git hub repository at https://github.com/usc-cloud/parallel-high-betweenness-centrality

Clone the repository using

<code>git clone https://github.com/usc-cloud/parallel-high-betweenness-centrality.git</code>

Note: You may need to install a git client to download the repository.

Installation
------------

A quick start guide can be found [here](QuickStart.md) together with a precompiled VM to help you get started.

A detailed guide on how to install the software on a distributed setup can be found [here](GeneralInstallationGuide.md).

Future enhancements
-------------------

Given the increasing popularity of cloud oriented graph analytics frameworks a GoFFish version of the proposed algorithm will be delivered.
