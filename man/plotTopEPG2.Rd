% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotTopEPG2.R
\name{plotTopEPG2}
\alias{plotTopEPG2}
\title{plotTopEPG2}
\usage{
plotTopEPG2(MLEobj, DCobj = NULL, kit = NULL, AT = NULL, ST = NULL,
  dyeYmax = TRUE, plotRepsOnly = TRUE, options = NULL)
}
\arguments{
\item{MLEobj}{An object returned from contLikMLE}

\item{DCobj}{An object returned from devonvolve: Must be run with same object as MLEobj}

\item{kit}{Short name of kit: See supported kits with getKit(). Argument ignored if degradation model used.}

\item{AT}{A detection threshold can be shown in a dashed line in the plot (constant). Possibly a AT[[dye]] list.}

\item{ST}{A stochastic threshold can be shown in a dashed line in the plot (constant). Possibly a ST[[dye]] list.}
}
\value{
sub A plotly widget
}
\description{
EPG data visualizer (interactive)
}
\details{
Plots the expected peak heights of the top genotypes. The peak heights for corresponding alleles (one sample) are superimposed.
}
\author{
Oyvind Bleka
}
