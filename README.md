# retroData: companion data package for the article "The effect of statistical normalization on network propagation scores",  https://doi.org/10.1093/bioinformatics/btaa896

## Install

For the development version, change directory to the 
retroData path and execute

```
devtools::install()
```
You can also install the package through the built zip file

```
R CMD INSTALL retroData_0.2.0.tar.gz
```

or through its [GitHub repository](https://github.com/b2slab/retroData). 

## Getting started

Have a glance at the package help

```
?retroData
```

List of data objects from the three main sections in the article:

1. Yeast analysis: 
  - `yeast`: network
2. Simulated gene expression analysis: 
  - `interactome`: network
  - `ALL`: gene background
  - `dataLym`: gene background
  - `keggdlbcl`: KEGG gene sets from 2017
3. Prospective pathway prediction:
  - `biogrid2011` PPI network from before 2011
  - `kegg2011`: KEGG pathways from 2011
  - `kegg2018`: KEGG pathways from 2018

The code to perform the analysis can be found in our [diffuBench repository](https://github.com/b2slab/diffuBench).
