% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fragment_count.R
\name{CreateCountFragment}
\alias{CreateCountFragment}
\title{Create a fragment based on the count of values in a vector (Deprecated)}
\usage{
CreateCountFragment(x, units, fallback)
}
\arguments{
\item{x}{A vector of integer values.}

\item{units}{A vector of length 2 indicating the singular and plural of x's units (e.g., c("country","countries")).}

\item{fallback}{The character string to return in case of error}
}
\description{
Return a statment summarising the number of items in a set
}
\examples{
CreateCountFragment(as.integer(c(1, 2, 3, NA)), units = c('letter', 'letters'), fallback = "an unknown number of")
}
