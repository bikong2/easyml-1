% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/measure.R
\name{measure_auc_score}
\alias{measure_auc_score}
\title{Measure area under the curve.}
\usage{
measure_auc_score(y_true, y_pred)
}
\arguments{
\item{y_true}{A numeric vector; the ground truth (correct) target values.}

\item{y_pred}{A numeric vector; the estimated target values.}
}
\value{
A numeric vector of length one; the AUC metric.
}
\description{
Given the ground truth (correct) target values and the estimated target 
values, calculates the the AUC metric.
}
\seealso{
Other measure: \code{\link{measure_correlation_score}},
  \code{\link{measure_mse_score}},
  \code{\link{measure_r2_score}}
}

