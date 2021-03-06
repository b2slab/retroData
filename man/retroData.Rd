% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{package}
\name{retroData}
\alias{retroData}
\alias{retroData-package}
\title{retroData: Companion data package for the article
"The effect of statistical normalization on network
propagation scores", https://doi.org/10.1093/bioinformatics/btaa896.}
\description{
This package contains all the data that was used to
run the analysis. This includes specific gene-pathway human
annotations from KEGG, and other network and genetic data
from public sources.
}
\details{
Yeast analysis:
The \link[igraphdata]{yeast} network.

DLBCL:
The interactome in \link[DLBCL]{interactome}.
KEGG human pathways from 2017 in \link[retroData]{keggdlbcl}.
The gene backgrounds were derived from \link[ALL]{ALL} and
\link[DLBCL]{dataLym}.

Prospective pathway prediction:
The retroData package provides the BioGRID
protein-protein interaction
network from 2011 \link[retroData]{biogrid2011}
and KEGG pathways from 2011 \link[retroData]{kegg2011}
and 2018 \link[retroData]{kegg2018}.
This was useful for validating the performance of
network-based gene prediction methods in a six year
horizon.
}
\section{Data objects}{
 (1) the yeast interactome
\link[retroData]{yeast}, (2) the KEGG pathways
\link[retroData]{keggdlbcl}, the human interactome
\link[retroData]{interactome} and the backgrounds
\link[retroData]{ALL} and \link[retroData]{dataLym},
(3) the KEGG pathways \link[retroData]{kegg2011} and
\link[retroData]{kegg2018}, and the network
\link[retroData]{biogrid2011}
}

