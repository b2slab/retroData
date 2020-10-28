#' retroData: Companion data package for the article
#' "The effect of statistical normalization on network
#' propagation scores", https://doi.org/10.1093/bioinformatics/btaa896.
#'
#' This package contains all the data that was used to
#' run the analysis. This includes specific gene-pathway human
#' annotations from KEGG, and other network and genetic data
#' from public sources.
#'
#' Yeast analysis:
#' The \link[igraphdata]{yeast} network.
#'
#' DLBCL:
#' The interactome in \link[DLBCL]{interactome}.
#' KEGG human pathways from 2017 in \link[retroData]{keggdlbcl}.
#' The gene backgrounds were derived from \link[ALL]{ALL} and
#' \link[DLBCL]{dataLym}.
#'
#' Prospective pathway prediction:
#' The retroData package provides the BioGRID
#' protein-protein interaction
#' network from 2011 \link[retroData]{biogrid2011}
#' and KEGG pathways from 2011 \link[retroData]{kegg2011}
#' and 2018 \link[retroData]{kegg2018}.
#' This was useful for validating the performance of
#' network-based gene prediction methods in a six year
#' horizon.
#'
#' @section Data objects: (1) the yeast interactome
#' \link[retroData]{yeast}, (2) the KEGG pathways
#' \link[retroData]{keggdlbcl}, the human interactome
#' \link[retroData]{interactome} and the backgrounds
#' \link[retroData]{ALL} and \link[retroData]{dataLym},
#' (3) the KEGG pathways \link[retroData]{kegg2011} and
#' \link[retroData]{kegg2018}, and the network
#' \link[retroData]{biogrid2011}
#'
#' @docType package
#' @name retroData
NULL

#' BioGRID PPI network until 2011
#'
#' A protein-protein interaction network containing 11,394
#' nodes and 67,573 edges. The publications to derive the
#' interactions to build the nework
#' are up to the year 2011, not included. The network is weighted according to
#' the confidence on the interactions [Cao et al, 2014]
#'   \url{http://dx.doi.org/10.1093/bioinformatics/btu263}, mainly computed from the
#' number of publications supporting it and their throughput, being low
#' throughput regarded as more trustable.
#'
#' @format An \code{\link[igraph]{igraph}} object with entrez ids as vertex names and
#' confidence as edge weights
#'
#' @source Database from \url{https://thebiogrid.org/} and
#' edge weights from [Cao et al, 2014]
#'   \url{http://dx.doi.org/10.1093/bioinformatics/btu263}
"biogrid2011"

#' KEGG pathways from 2011
#'
#' 139 KEGG pathways from 14th March, 2011. These pathways
#' contain entrez ids and are guaranteed to have new genes
#' in \link[retroData]{kegg2018} and to perfectly
#' map to the \link[retroData]{biogrid2011}
#' network.
#'
#' @format A list with 123 KEGG pathways
#'
#' @source The outdated bioconductor repository KEGG.db
#' \url{http://www.bioconductor.org/packages/release/data/annotation/html/KEGG.db.html}
"kegg2011"

#' KEGG pathways from 2018
#'
#' 139 KEGG pathways from 18th August 2018. These pathways
#' contain entrez ids and are guaranteed to have new genes
#' compared to \link[retroData]{kegg2011} and to
#' perfectly map to the \link[retroData]{biogrid2011}
#' network.
#'
#' @format A list with 123 KEGG pathways
#'
#' @source The KEGG rest API \url{rest.kegg.jp}
"kegg2018"

#' KEGG pathways for the DLBCL/HPRD simulated gene expression
#'
#' 320 KEGG pathways from 2017, Release 83.0+/09-09, Sep 17.
#'
#' @format A table with 28077 rows, 2 columns, with 320 KEGG pathways
#'
#' @source The KEGG rest API \url{rest.kegg.jp}
"keggdlbcl"

#' Yeast network from the igraphdata package
#'
#' This object is a copy of \code{\link[igraphdata]{yeast}}
#'
#' @format An igraph object with 2617 nodes and 11855 edges, representing a
#' yeast protein interactions, von Mering et al.
#'
#' @source The \code{igraphdata} R package
"yeast"

#' HPRD network from the DLBCL package
#'
#' This object is a copy of \code{\link[DLBCL]{interactome}}
#'
#' @format A graphNEL object with 9386 nodes and 36504 edges, representing a
#' human interactome from HPRD.
#'
#' @source The \code{DLBCL} R package
"interactome"

#' dataLym gene expression p-values from the DLBCL package
#'
#' This object is a copy of \code{\link[DLBCL]{dataLym}}
#'
#' @format A data.frame with 3583 rows and 8 columns, with genes
#' and p-values for differential expression.
#'
#' @source The \code{DLBCL} R package
"dataLym"

#' ALL data from the ALL package
#'
#' This object is a copy of \code{\link[ALL]{ALL}}
#'
#' @format ExpressionSet with 12625 features, 128 samples
#'
#' @source The \code{ALL} R package
"ALL"
