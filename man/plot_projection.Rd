% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy-plot.R
\name{plot_projection}
\alias{plot_projection}
\alias{plot_residuals}
\title{Plot a SEIR model projection}
\usage{
plot_projection(
  pred_dat,
  obs_dat,
  col = "#377EB8",
  value_column = "value",
  date_column = "day",
  ylab = "Reported cases"
)

plot_residuals(
  pred_dat,
  obs_dat,
  obj,
  value_column = "value",
  date_column = "day",
  type = c("raw", "quantile"),
  ylab = if (type == "raw") "Residual" else "Quantile residual",
  date_function = lubridate::ymd,
  return_residuals = FALSE
)
}
\arguments{
\item{pred_dat}{Output from \code{\link[=tidy_seir]{tidy_seir()}}.}

\item{obs_dat}{A data frame of observed data. Should have a column of \code{day}
and \code{value} that matches \code{pred_dat}. If using multiple data types, should
also have \code{data_type}.}

\item{col}{Colour for the line and ribbon.}

\item{value_column}{Column in \code{obs_dat} that contains the reported cases.}

\item{date_column}{Date or day column name. A column by this name must be in
\code{obs_dat} and \code{pred_dat}. Note that \code{\link[=tidy_seir]{tidy_seir()}} will return a data frame
with \code{day} in it. If you want dates then you will need to add such a
column.}

\item{ylab}{Y axis label.}

\item{obj}{Outut from \code{\link[=fit_seir]{fit_seir()}}.}

\item{type}{Raw (observed - expected) or quantile residuals (\code{covidseir:::qres_nbinom2})?}

\item{date_function}{A function to translate the character representation of}

\item{return_residuals}{Return residuals instead of plot?}
}
\value{
A ggplot object
}
\description{
Plot a SEIR model projection
}
\details{
See \code{\link[=project_seir]{project_seir()}} for an example.
}
\examples{
# See ?project_seir
}
