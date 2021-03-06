% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fragment_series.R
\name{CreateSeriesFragment}
\alias{CreateSeriesFragment}
\title{Create a simple conjunctive series (Deprecated)}
\usage{
CreateSeriesFragment(items, conj = "and", fallback = NA)
}
\arguments{
\item{items}{An unnamed list of character values in the desired order.}

\item{conj}{The conjunction to use: "and", "or", &c.}

\item{fallback}{The character string to return when the list is empty.}
}
\description{
Format a list of character values as a simple series
}
\examples{
example_items <- list("shoes", "ships", "sealing wax")
fragment_series(example_items)
}
