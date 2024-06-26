% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{data_censored}
\alias{data_censored}
\title{Example of longitudinal data for sequential trial emulation containing censoring}
\format{
A data frame with 725 rows and 12 variables:
\describe{
\item{id}{patient identifier}
\item{period}{time period}
\item{treatment}{indicator for receiving treatment in this period, 1=treatment, 0=non-treatment}
\item{x1}{A time-varying categorical variable relating to treatment and the outcome}
\item{x2}{A time-varying numeric variable relating to treatment and the outcome}
\item{x3}{A fixed categorical variable relating to treatment and the outcome}
\item{x4}{A fixed categorical variable relating to treatment and the outcome}
\item{age}{patient age in years}
\item{age_s}{patient age}
\item{outcome}{indicator for outcome in this period, 1=event occurred, 0=no event}
\item{censored}{indicator for patient being censored in this period, 1=censored, 0=not censored}
\item{eligible}{indicator for eligibility for trial start in this period, 1=yes, 0=no}
}
}
\usage{
data_censored
}
\description{
This data contains data from 89 patients followed for up to 19 periods.
}
\keyword{datasets}
