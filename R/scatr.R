#' Fit a Preferential Sampling Model
#'
#' @description
#' Jointly models an ecological spatial process and sampling intensity to
#' separate ecological signal from sampling-driven scatter.
#'
#' @param formula A formula or \code{scatr_formula} object specifying the
#'   ecological process model.
#' @param sampling A formula specifying the sampling process model. If NULL,
#'   uses an intercept-only LGCP.
#' @param data A data frame containing the response and covariates.
#' @param locations A matrix, sf object, or formula specifying observation
#'   locations. Required for continuous spatial models.
#' @param family A \code{scatr_family} object specifying the response
#'   distribution. Default is \code{scatr_family("poisson")}.
#' @param spatial Spatial structure specification. See \code{\link{spatial_gp}},
#'   \code{\link{spatial_spde}}, etc.
#' @param sampling_spatial Spatial structure for sampling process. If NULL,
#'   inherits from \code{spatial}.
#' @param shared Shared latent structure specification. See
#'   \code{\link{latent_shared}}.
#' @param priors Prior specifications. See \code{\link{scatr_priors}}.
#' @param backend Inference backend: \code{"hmc"} (default), \code{"laplace"},
#'   or \code{"auto"}.
#' @param chains Number of MCMC chains. Default 4.
#' @param iter Number of iterations per chain. Default 2000.
#' @param warmup Number of warmup iterations. Default \code{iter / 2}.
#' @param thin Thinning interval. Default 1.
#' @param cores Number of cores for parallel chains. Default 1.
#' @param seed Random seed for reproducibility.
#' @param init Initial values: \code{"default"}, \code{"random"}, or a list.
#' @param control A list of control parameters for the sampler.
#' @param ... Additional arguments passed to backend.
#'
#' @return An object of class \code{scatr_fit} containing:
#'   \item{draws}{Posterior samples}
#'   \item{formula}{Model specification}
#'   \item{sampling_formula}{Sampling process specification}
#'   \item{family}{Distribution family}
#'   \item{data}{Original data}
#'   \item{locations}{Observation locations}
#'   \item{backend}{Inference backend used
}
#'   \item{diagnostics}{MCMC diagnostics}
#'   \item{decomposition}{Ecological/sampling/shared decomposition}
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Basic preferential sampling model
#' fit <- scatr(
#'   abundance ~ elevation + temperature,
#'   sampling = ~ road_distance + population_density,
#'   data = species_data,
#'   locations = ~ x + y,
#'   spatial = spatial_gp(range_prior = prior_pc_range(50, 0.5)),
#'   shared = latent_shared()
#' )
#'
#' # Extract sampling-adjusted predictions
#' pred <- predict(fit, newdata = grid, type = "ecological")
#'
#' # Decompose spatial structure
#' decomp <- scatter_decomposition(fit)
#' plot(decomp)
#' }
scatr <- function(formula,
                  sampling = NULL,
                  data,
                  locations,
                  family = scatr_family("poisson"),
                  spatial = spatial_gp(),
                  sampling_spatial = NULL,
                  shared = latent_shared(),
                  priors = scatr_priors(),
                  backend = c("hmc", "laplace", "auto"),
                  chains = 4,
                  iter = 2000,
                  warmup = iter / 2,
                  thin = 1,
                  cores = 1,
                  seed = NULL,
                  init = "default",
                  control = list(),
                  ...) {


  # Placeholder implementation
  stop("scatr() not yet implemented. See roadmap for development plan.",
       call. = FALSE)
}
