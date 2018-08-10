#' retroData: benchmark for pathway prediction with
#' retrospective data
#'
#' The retroData package provides the BioGRID
#' protein-protein interaction
#' network from 2011 and KEGG pathways from 2011 and 2018.
#' This can be useful for validating the performance of
#' network-based gene prediction methods in a six year
#' horizon case.
#'
#' @section Data objects: the pathways can be found at
#' \link[retroData]{kegg2011} and
#' \link[retroData]{kegg2018}, whereas the network is
#' contained in \link[retroData]{biogrid2011}
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
