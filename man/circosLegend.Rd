% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plottingFunctions.R
\name{circosLegend}
\alias{circosLegend}
\title{Plot a legend for circos plot}
\usage{
circosLegend(dfNameGroup, highlight)
}
\arguments{
\item{dfNameGroup}{data.frame , data.frame with group and unique idenfier 
(name)}

\item{highlight}{logical, should colours be adjusted to highlight settings?}
}
\value{
The function will open a new plot and display colours together 
     with labels.
}
\description{
circosLegend plots a legend for circos plot using group names .
}
\details{
Internal use for shiny app or outside of shiny to reproduce 
     figures.
}
\examples{
 ## load binnedMSP
 data("binnedMSP", package = "MetCirc")
 ## use only a selection 
 binnedMSP <- binnedMSP[c(1:20, 29:48, 113:132, 240:259),]
 similarityMat <- createSimilarityMatrix(binnedMSP)#'  
 namesPrec <- rownames(binnedMSP)
 dfNameGroup <- data.frame(
     group = unlist(lapply(strsplit(namesPrec, "_"), "[[", 1)), 
     name = namesPrec) 
 ## plot legend
 circosLegend(dfNameGroup, highlight = TRUE)
 @export
}
\author{
Thomas Naake, \email{naake@stud.uni-heidelberg.de}
}
