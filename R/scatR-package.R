#' @keywords internal
"_PACKAGE"

#' scatR: Joint Spatial Modelling Under Preferential Sampling
#'
#' @description
#' A Bayesian spatial modelling pipeline that separates ecological signal from
#' sampling-driven scatter under preferential sampling.
#'
#' @details
#' Spatial ecological data rarely represent where ecological processes truly

#' occur. Instead, they reflect where observers choose or are able to sample.
#' When sampling locations are non-random and correlated with the ecological
#' process, standard spatial models confound sampling structure with ecological
#' signal.
#'
#' `scatR` addresses this by jointly modelling:
#' \itemize{
#'   \item A latent ecological spatial process
#'   \item A latent sampling intensity process
#'   \item Shared spatial structure identifying preferential sampling
#' }
#'
#' The result is a sampling-adjusted ecological surface that reflects where
#' the process is supported to exist, not merely where it was observed.
#'
#' @section Main functions:
#' \itemize{
#'   \item \code{\link{scatr}}: Fit a preferential sampling model
#'   \item \code{\link{scatr_formula}}: Specify model formula
#'   \item \code{\link{scatr_family}}: Define response distribution
#'   \item \code{\link{scatter_decomposition}}: Decompose spatial structure
#' }
#'
#' @section Spatial specifications:
#' \itemize{
#'   \item \code{\link{spatial_gp}}: Gaussian process
#'   \item \code{\link{spatial_spde}}: SPDE approximation
#'   \item \code{\link{spatial_car}}: Conditional autoregressive
#'   \item \code{\link{spatial_bym2}}: BYM2 (structured + unstructured)
#' }
#'
#' @section Sampling process:
#' \itemize{
#'   \item \code{\link{sampling_lgcp}}: Log-Gaussian Cox process
#'   \item \code{\link{sampling_point}}: Point process likelihood
#'   \item \code{\link{sampling_binomial}}: Binomial sampling model
#' }
#'
#' @useDynLib scatR, .registration = TRUE
#' @importFrom Rcpp sourceCpp
#' @importFrom Matrix sparseMatrix Diagonal crossprod
#' @importFrom stats model.matrix model.frame terms formula
#' @importFrom graphics plot par lines polygon
#' @importFrom grDevices adjustcolor
NULL
