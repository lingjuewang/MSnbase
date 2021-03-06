% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-MSnSet.R
\name{featureCV}
\alias{featureCV}
\title{Calculates coeffivient of variation for features}
\usage{
featureCV(x, groupBy, na.rm = TRUE, norm = "none", suffix = NULL)
}
\arguments{
\item{x}{An instance of class \code{\link{MSnSet}}.}

\item{groupBy}{An object of class \code{factor} defining how to
summarise the features.}

\item{na.rm}{A \code{logical(1)} defining whether missing values should
be removed.}

\item{norm}{One of normalisation methods applied prior to CV
calculation. See \code{\link[=normalise]{normalise()}} for more details. Here, the
default is \code{'none'}, i.e. no normalisation.}

\item{suffix}{A \code{character(1)} to be used to name the new CV
columns. Default is \code{NULL} to ignore this. This argument
should be set when CV values are already present in the
\code{\link{MSnSet}} feature variables.}
}
\value{
A \code{matrix} of dimensions \code{length(levels(groupBy))} by
\code{ncol(x)} with the respecive CVs. The column names are formed
by pasting \code{CV.} and the sample names of object \code{x}, possibly
suffixed by \code{.suffix}.
}
\description{
This function calculates the column-wise coefficient of variation
(CV), i.e.  the ration between the standard deviation and the
mean, for the features in an \code{\link{MSnSet}}. The CVs are calculated
for the groups of features defined by \code{groupBy}. For groups
defined by single features, \code{NA} is returned.
}
\examples{
data(msnset)
msnset <- msnset[1:4]
gb <- factor(rep(1:2, each = 2))
featureCV(msnset, gb)
featureCV(msnset, gb, suffix = "2")
}
\seealso{
\code{\link[=combineFeatures]{combineFeatures()}}
}
\author{
Laurent Gatto and Sebastian Gibb
}
