# Stochastic_minimization

**This project constituted one of the stages required for passing the Probability and Statistics course.**

We have implemented the following algorithms: - Pure Random Search - Multi-Start (using L-BSGS-B from R `optim` package).


## Description

The project contains results from comparing two stochastic minimization algorithms: multi-start (MS) and Pure Random Search (PRS). Two functions from the "smoof" library are used: the Ackley function and the Rastrigin function in 2, 10, and 20 dimensions.

## Usage

Script requires R installed on your machine with following dependencies: - `smoof` package. 

```         
RScript main.R
```

In `main.R` you can change following parameters: - `num_points` - number of repeats for each algorithm - `dimensions` - list of dimensions to test for each function - `function` - function from smoof package for testing. 

## Results

You can find plots in `plots` directory and also our elaboration in [results](doc/Stata.pdf) (in Polish).

## The technologies we used in the project

### 1 -> R
### 2 -> Python

## Team

[Wiktor Dybalski](https://github.com/WiktorDybalski)

[Tomasz Furgała](https://github.com/TommyFurgi)
