% Generated by roxygen2 (4.0.2): do not edit by hand
\name{plot.gp}
\alias{plot.gp}
\title{Plot a gaussian process}
\usage{
\method{plot}{gp}(x, y = NULL, plotdata = TRUE, plotmean = TRUE,
  plotcov = TRUE, plotnoise = FALSE, samples = 0, sigma = 2,
  title = NULL, legend = FALSE, plotgradient = TRUE, plotls = FALSE,
  ...)
}
\arguments{
\item{x}{the gp-object}

\item{y}{placeholder variable}

\item{plotdata}{plot the data (default)}

\item{plotmean}{plot the GP mean (default)}

\item{plotcov}{plot the GP covariances (default)}

\item{plotnoise}{plot the observational noise (default)}

\item{samples}{plot N samples from the GP}

\item{sigma}{variance level to plot}

\item{title}{plot title}

\item{legend}{plot legend}

\item{plotgradient}{use gradient graphics}

\item{plotls}{plot lengthscale function}

\item{...}{...}
}
\description{
Plots a gaussian process. Several boolean parameters for modifying the
 plot. By default plots the data, posterior mean and 95\% interval.
}
\examples{
# read toy data
data(toydata)

\dontrun{can take several minutes
# perform one-sample regression
res = gpr2sample(toydata$ctrl$x, toydata$ctrl$y, seq(0,22,0.1))

# pre-computed model for toydata
data(toygps)
res = toygps$ctrlmodel

# basic plot with data, estimated mean and 95\\\%
plot(res)

# don't plot the data, plot some samples drawn from the learned gp
plot(res, plotdata=FALSE, samples=3)}
}

