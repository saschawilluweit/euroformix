% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotTopMPS2.R
\name{plotTopMPS2}
\alias{plotTopMPS2}
\title{plotTopMPS2}
\usage{
plotTopMPS2(MLEobj, DCobj = NULL, AT = NULL, ST = NULL,
  grpsymbol = "_", locYmax = TRUE, options = NULL)
}
\arguments{
\item{MLEobj}{An object returned from contLikMLE}

\item{DCobj}{An object returned from devonvolve: Must be run with same object as MLEobj}

\item{AT}{A detection threshold can be shown in a dashed line in the plot (constant). Possibly a AT[[loc]] list.}

\item{ST}{A stochastic threshold can be shown in a dashed line in the plot (constant). Possibly a ST[[loc]] list.}

\item{grpsymbol}{A separator for each allele giving plot grouping. Useful for separating conventional repeat units (RU) and sequence variant.}

\item{locYmax}{A boolean of whether Y-axis should be same for all markers (FALSE) or not (TRUE this is default)}

\item{options}{A list of possible plot configurations. See comments below}
}
\value{
sub A plotly widget
}
\description{
MPS data visualizer (interactive)
}
\details{
Plots the expected peak heights of the top genotypes. The peak heights for corresponding alleles (one sample) are superimposed.
}
\author{
Oyvind Bleka
}
