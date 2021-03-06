% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/concensus-statistical-methods.R
\name{getRoughDispersions}
\alias{getRoughDispersions}
\alias{getRoughDispersions.concensusDataSet}
\alias{getRoughDispersions.concensusWorkflow}
\alias{getRoughDispersions.default}
\title{Get rough Negative Binomial dispersion parameters}
\usage{
getRoughDispersions(x, ...)

\method{getRoughDispersions}{default}(x, ...)

\method{getRoughDispersions}{concensusWorkflow}(x, ...)

\method{getRoughDispersions}{concensusDataSet}(x, grouping = c("compound",
  "concentration", "strain"), ...)
}
\arguments{
\item{x}{concensusWorkflow or concensusDataSet.}

\item{...}{Other arguments.}
}
\value{
concensusWorkflow or concensusDataSet with a new \code{mean_variance_relationship} and \code{dispersion} attribute.
}
\description{
Get rough Negative Binomial dispersion parameters using ordinary least squares.
}
\details{
Based on the assumption:
\deqn{Var(K) = \mu + \alpha  \mu^2}
where K is count, \eqn{\mu} is the mean count, and \eqn{\alpha} is the Negative Binomial dispersion parameter. This is rearranged to:
\deqn{\alpha = (Var(K) - \mu) / \mu^2}
The result is usually way off the final dispersion, but at least gives something reasonable to work from when estimating batch
effects using a Negative Binomial GLM.
}

