% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper.R
\name{make_design}
\alias{make_design}
\title{Make a Design Matrix}
\usage{
make_design(bio, batch, W, nested = FALSE)
}
\arguments{
\item{bio}{factor. The biological covariate.}

\item{batch}{factor. The batch covariate.}

\item{W}{numeric. Either a vector or matrix containing one or more
continuous covariates (e.g. RUVg factors).}

\item{nested}{logical. Whether or not to consider a nested design
(see details).}
}
\value{
The design matrix.
}
\description{
This function builds a design matrix for the Adjustment Normalization Step,
in which covariates are two (possibly nested) categorical factors and one or
more continuous variables.
}
\details{
If nested=TRUE a nested design is used, i.e. the batch variable is
  assumed to be nested within the bio variable. Here, nested means that each
  batch is composed of samples from only *one* level of bio, while each
  level of bio may contain multiple batches.
}
\examples{

bio = as.factor(rep(c(1,2),each = 2))
batch = as.factor(rep(c(1,2),2))
design_mat = make_design(bio,batch, W = NULL)

}

