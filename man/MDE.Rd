% Generated by roxygen2 (4.1.1.9000): do not edit by hand
% Please edit documentation in R/MDE.R
\name{MDE}
\alias{MDE}
\title{create multiple geographic ranges within a domain and summarize overlap}
\usage{
MDE(world, targetRangeSizes, occupiedValue = 1, showPlot = FALSE,
  nCores = NULL)
}
\arguments{
\item{world}{An object of class `RasterLayer`}

\item{targetRangeSizes}{A vector of target range sizes in pixels.  The GrowRange() function will be used to grow ranges for all elements in this vector.}

\item{occupiedValue}{The cell value used to represent a cell is occupied.  Defaults to 1.}

\item{showPlot}{Whether or not to show the plot.  Defaults to FALSE}

\item{nCores}{The number of processor cores on which to run the simulations in paralell.  Defaults to the number of available cores discovered by parallel::detectCores().}
}
\description{
This function creates random species ranges based on a specified vector of range sizes, and then summarized the overlap of ranges within the domain
}
\examples{
\dontrun{
WorldRaster <- MakeWorld(10,10)
MDE(WorldRaster, targetRangeSizes=c(15,15,20,20,50,50,60))
}
}

