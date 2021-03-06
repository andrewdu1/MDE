% Generated by roxygen2 (4.1.1.9000): do not edit by hand
% Please edit documentation in R/GrowRange.R
\name{GrowRange}
\alias{GrowRange}
\title{Grow a range to a target size within a given domain raster}
\usage{
GrowRange(world, targetRangeSize, occupiedValue = 1, showPlot = FALSE)
}
\arguments{
\item{world}{An object of class `RasterLayer`}

\item{targetRangeSize}{The target size of the range in pixels.  Defaults to 20\% of the total number of cells in world. Range may not reach target size if there are not enough adjacent pixels to accomodate the target range size.}

\item{occupiedValue}{The value to use to indicate that a cell is occupied.  Defaults to 1.}

\item{showPlot}{Whether or not to show the plot of the resulting range.  Defaults to FALSE.}
}
\description{
This function grows a single species range to a target size within a given raster, using rook's case adjacency. Raster cells with NA values are unavailable for range expansion, thus there must be some non-NA value in the world raster.
}
\examples{
WorldRaster <- MakeWorld(10,10)
GrowRange(WorldRaster, targetRangeSize=15)
}

