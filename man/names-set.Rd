% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert2MSP.R
\docType{methods}
\name{names<-}
\alias{names<-}
\alias{names<-,MSP,character-method}
\title{\code{names<-} sets names in \code{MSP}-object}
\usage{
\S4method{names}{MSP,character}(x) <- value
}
\arguments{
\item{x}{object of class \code{MSP}, see \code{?convert2MSP} for further
information}

\item{value}{\code{character} vector with new names}
}
\value{
\code{MSP}-object
}
\description{
\code{names<-} sets names in \code{MSP}-object
}
\examples{
data("sd02_deconvoluted", package = "MetCirc")
finalMSP <- convert2MSP(sd02_deconvoluted, split = " _ ",
                         splitIndMZ = 2, splitIndRT = NULL)
names(finalMSP) <- rep("Unknown")
}
