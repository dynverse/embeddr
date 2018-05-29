#' Pseudotemporal ordering of single-cell RNA-seq data using laplacian eigenmaps and principal curves
#'
#' \pkg{embeddr} provides a set of methods for manifold learning on single-cell data followed by 
#' principal curve fitting to assign a pseudotime to cells.
#' 
#' @importFrom scaterlegacy pData<- fData<- cellDist<- cellDist redDim<- redDim
#' @importFrom Biobase fData pData exprs featureNames
#' @importFrom dplyr select arrange rename mutate full_join contains
#' @importFrom reshape2 melt
#' @import ggplot2
#'
#' @name embeddr-package
#' @docType package
NULL