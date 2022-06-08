% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitgam.R
\name{build_formula}
\alias{build_formula}
\title{Build a GAM formula dynamically}
\usage{
build_formula(target, covariates, k)
}
\arguments{
\item{target}{Diffusion metric to model}

\item{covariates}{List of strings of GAM covariates, not including
the smoothing terms over nodes and the random effect due to subjectID.
This list can also include smoothing terms.}

\item{k}{Dimension of the basis used to represent the node smoothing term}
}
\value{
A GAM formula
}
\description{
Build a GAM formula dynamically
}
\examples{
formula <- build_formula(target = "dti_fa",
                         covariates = c("group", "sex"),
                         k = 40)
formula <- build_formula(target = "dki_md",
                         covariates = c("group", "sex", "s(age, by=sex)"),
                         k = 32)
}