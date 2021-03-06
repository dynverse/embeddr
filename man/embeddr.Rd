% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/embeddr.R
\name{embeddr}
\alias{embeddr}
\title{Laplacian eigenmaps embedding of single-cell RNA-seq data.}
\usage{
embeddr(sce, genes_for_embedding = NULL, kernel = c("nn", "dist", "heat"),
  metric = c("correlation", "euclidean", "cosine"),
  nn = round(log(ncol(sce))), eps = NULL, t = NULL,
  symmetrize = c("mean", "ceil", "floor"), measure_type = c("unorm",
  "norm"), p = 2)
}
\arguments{
\item{sce}{The SCESet object}

\item{genes_for_embedding}{A vector of gene indices or names to subset the sce for the embedding. The returned
object contains the full original gene set found in sce.}

\item{kernel}{The choice of kernel. 'nn' will give nearest neighbours, 'dist' gives minimum distance and
'heat' gives a heat kernel. Discussed in detail in 'Laplacian Eigenmaps and Spectral Techniques for Embedding and Clustering',
Belkin & Niyogi}

\item{metric}{The metric with which to assess 'closeness' for nearest neighbour selection, one of
'correlation' (pearson) or 'euclidean'. Default is 'correlation'.}

\item{nn}{Number of nearest neighbours if kernel == 'nn'}

\item{eps}{Maximum distance parameter if kernel == 'dist'}

\item{t}{'time' for heat kernel if kernel == 'heat'}

\item{symmetrize}{How to make the adjacency matrix symmetric. Note that slightly
counterintuitively, node i having node j as a nearest neighbour doesn't guarantee node
j has node i. There are several ways to get round this:
\itemize{
\item \code{mean} If the above case occurs make the link weight 0.5 so the adjacency matrix becomes \eqn{0.5(A + A')}
\item \code{ceil} If the above case occurs set the link weight to 1 (ie take the ceiling of the mean case)
\item \code{floor} If the above case occurs set the link weight to 0 (ie take the floor of the mean case)
}}

\item{measure_type}{Type of laplacian eigenmap, which corresponds to the constraint on the eigenvalue problem. If
type is 'unorm' (default), then the graph measure used is the identity matrix, while if type is 'norm' then the measure
used is the degree matrix.}

\item{p}{Dimension of the embedded space, default is 2}
}
\value{
An object of class SCESet
}
\description{
Laplacian eigenmaps embedding of single-cell RNA-seq data.
}
\examples{
library(scaterlegacy)
data('sc_example_counts') ; sce <- newSCESet(countData = sc_example_counts)
sce <- embeddr(sce)
}
