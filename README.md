# stochastic_minimization

Simple R script to find function minimum using stochastic minimization algorithm for statistic course on AGH UST.

I have implemented the following algorithms: - Pure Random Search - Multi-Start (using L-BSGS-B from R `optim` package).

Script generates multiple plots with data from minimum finding and text output with results.

# Usage

Script requires R installed on your machine tohether with following dependencies: - `smoof` package. 

```         
RScript main.R
```

In `main.R` you can change following parameters: - `num_points` - number of repeats for each algorithm - `dimensions` - list of dimensions to test for each function - `function` - function from smoof package for testing. 

# Results

You can find plots in `plots` directory. You can find my elaboration in [results](doc/Stata.pdf) (in Polish).