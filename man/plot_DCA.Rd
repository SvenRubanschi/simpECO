% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_DCA.R
\name{plot_DCA}
\alias{plot_DCA}
\title{Plots a Detrended Correspondence Analysis (DCA)}
\usage{
plot_DCA(veg, env = NULL, weigth = 0, group.col = 0,
  r.cutoff_env = 0.3, r.cutoff_spec = 0.3, colvec = NULL, pch = 20,
  lty = 1, lwd = 1, cex = 1, cex.lab = 1, cex.leg = 1,
  ordihull = F)
}
\arguments{
\item{veg}{vegetation matrix}

\item{env}{environment matrix (only numeric will be consider)}

\item{group.col}{column of the group info}

\item{r.cutoff_env}{the R²-cutoff of the environment}

\item{r.cutoff_spec}{the R²-cutoff of the species}

\item{colvec}{colour vector of the groups like c("col1","col2","col3") or c(1,2,3)}

\item{pch}{point shape}

\item{lty}{line shape}

\item{lwd}{line size}

\item{cex}{scales plot}

\item{cex.lab}{scale of label}

\item{cex.leg}{scale of legend}

\item{weight}{Downweighting of rare species (0: no)}

\item{ordhull}{circled the groups}
}
\description{
Performs a DCA with fitted vectors of species and environment selected by a certain r2-cutoff
}
\note{
The points are the sites. Environmental parameter will be transformed into numeric.
}
\examples{
library(vegan) 
data(dune)
data(dune.env)
plot_DCA(veg = dune, env = dune.env[-4], group.col = 3 , r.cutoff_env = 0.2, r.cutoff_spec = 0.2)

}
