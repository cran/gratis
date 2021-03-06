#' Alternative parametrization of log normal distribution.
#'
#' See help("rlnorm") for the details for the log-normal distribution.
#' @title Log-normal distribution with alternative parametrization.
#' @param n number of observations.
#' @param mean "vector" the mean value of the log-normal distribution.
#' @param sd "vector" the variance of the log-normal distribution.
#' @return See the corresponding help for the usual log-normal functions.
#' @references Feng Li, Mattias Villani, and Robert Kohn. (2010). Flexible Modeling of
#'     Conditional Distributions using Smooth Mixtures of Asymmetric Student T Densities,
#'     Journal of Statistical Planning and Inference, 140(12), pp. 3638-3654
#' @author Feng Li, Central University of Finance and Economics .
#' @export

rlnorm2 <- function(n, mean, sd) {
  var <- sd^2
  s2 <- log(var / mean^2 + 1)
  m <- log(mean) - s2 / 2
  out <- rlnorm(n = n, meanlog = m, sdlog = sqrt(s2))
  return(out)
}
dlnorm2 <- function(x, mean, sd, log = FALSE) {
  var <- sd^2
  s2 <- log(var / mean^2 + 1)
  m <- log(mean) - s2 / 2
  out <- dlnorm(x = x, meanlog = m, sdlog = sqrt(s2), log = log)
  return(out)
}
plnorm2 <- function(q, mean, sd, lower.tail = TRUE, log.p = FALSE) {
  var <- sd^2
  s2 <- log(var / mean^2 + 1)
  m <- log(mean) - s2 / 2
  out <- plnorm(
    q = q, meanlog = m, sdlog = sqrt(s2),
    lower.tail = lower.tail, log.p = log.p
  )
  return(out)
}
qlnorm2 <- function(p, mean, sd, lower.tail = TRUE, log.p = FALSE) {
  var <- sd^2
  s2 <- log(var / mean^2 + 1)
  m <- log(mean) - s2 / 2
  out <- qlnorm(
    p = p, meanlog = m, sdlog = sqrt(s2),
    lower.tail = lower.tail, log.p = log.p
  )
  return(out)
}
