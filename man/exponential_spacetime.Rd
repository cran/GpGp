% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{exponential_spacetime}
\alias{exponential_spacetime}
\alias{d_exponential_spacetime}
\title{Spatial-Temporal exponential covariance function}
\usage{
exponential_spacetime(covparms, locs)

d_exponential_spacetime(covparms, locs)
}
\arguments{
\item{covparms}{A vector with covariance parameters
in the form (variance, range_1, range_2, nugget). range_1 is the
spatial range, and range_2 is the temporal range.}

\item{locs}{A matrix with \code{n} rows and \code{d+1} columns.
Each row of locs is a point in R^(d+1). The first \code{d} columns
should contain the spatial coordinates. The last column contains the times.}
}
\value{
A matrix with \code{n} rows and \code{n} columns, with the i,j entry
containing the covariance between observations at \code{locs[i,]} and
\code{locs[j,]}.
}
\description{
From a matrix of locations and covariance parameters of the form
(variance, range_1, range_2, nugget), return the square matrix of
all pairwise covariances.
}
\section{Functions}{
\itemize{
\item \code{d_exponential_spacetime()}: Derivatives with respect to parameters

}}
\section{Parameterization}{

The covariance parameter vector is (variance, range_1, range_2, nugget).
The covariance function is parameterized as
\deqn{ M(x,y) = \sigma^2 exp( - || D^{-1}(x - y) || ) }
where D is a diagonal matrix with (range_1, ..., range_1, range_2) on the diagonals.
The nugget value \eqn{ \sigma^2 \tau^2 } is added to the diagonal of the covariance matrix.
NOTE: the nugget is \eqn{ \sigma^2 \tau^2 }, not \eqn{ \tau^2 }.
}

