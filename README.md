# CUSUM-Algorithm
In statistical quality control, the CUSUM (Cumulative Sum) is a sequential analysis technique developed by E.S Page of the University of Cambridge. It is typically used for monitoring change detection.

## Objective
The objective of this project is to adress the problem of 'Multipath Detection' in 'Global Navigation Satellite Systems (GNSS)' receivers. The focus of this project will be to analyse multipath detection based on measurements that correspond to the DLL metric. It is to be kept under consideration that this project is similar to the ‘IGNSSrx’ project funded by the ‘European Commission’.

## Global Navigation Satellite Systems (GNSS)
The fundamental principle of GNSS positioning is based on the measurement of the distance between a set of visible satellites and the user receiver. To do so, the satellite transmits radio frequency signals, which are received by the GNSS receiver. The latter processes these signals in order to measure the time that the signal has travelled from the satellite to the receiver so that the distance can be computed.

## Project Description
This project was designed and implemented on MATLAB. Certain conditions were pre-determined and assumptions were made. Two data sets are considered for the design and implementation of the CUSUM Algorithm.

1- H0: This dataset presents conditions when no change is detected.
2- H1: This dataset presents conditions when a change is detected.

The first step is to form a hypothesis regarding statistical change and develop the probability density functions (pdf's) of bothe the data sets theoretically. Then these theoretical pdf's are compared with the ones present in the datasets. Following this, the next step is to implement the CUSUM algorithm, run both the datasets through this algorithm and then observe the repsonse accordingly. The "Mean Time Between False Alarms's" also calculated.

## File Description
The following project contains six files (4 .m files and 2 datasets). Their details are mentioned below:

1- DataSetH0: Dataset replicating conditions when no change is detected.

2- DataSetH1: Dataset replicating conditions when a change is detected.

3- Main.m: This is the root file where all the functions are called and executed.

4- CalculatePDF.m: This is the file which contains the steps required to calculate the probability density functions (pdf's).

5- CalculateLLR.m: This is the file which contains all the procedures required to calculate the 'Log Likelihood Ratio (LLR)'.

6- AlgoCUSUM.m: This is the file which contains the implementation of the CUSUM algorithm. 
