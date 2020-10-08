## ----initial, echo = FALSE, cache = FALSE, results = 'hide'-------------------
library(knitr)
opts_chunk$set(
  warning = FALSE, message = FALSE, echo = TRUE,
  fig.width = 7, fig.height = 6, fig.align = 'centre',
  comment = "#>"
)

## ---- message=FALSE, include = FALSE------------------------------------------
library(forecast)
library(tsibble)

## ----setup--------------------------------------------------------------------
# load package
library(gratis)

## ----fig.height = 6, fig.width = 7--------------------------------------------
generate_ts(n.ts = 3, freq = 12, nComp = 2, n = 120, output_format = "tsibble")

## ----fig.height = 6, fig.width = 7--------------------------------------------
x <- generate_ts(n.ts = 3, freq = 12, nComp = 2, n = 120,output_format = "list")
# N1 time series
x$N1$pars

## ----fig.height = 6, fig.width = 7--------------------------------------------
# plot N1 time series
autoplot(x$N1$x)

## ----fig.height = 6, fig.width = 7--------------------------------------------
generate_msts(seasonal.periods = c(7, 365), n = 800, nComp = 2,output_format="tsibble")

## ----fig.height = 6, fig.width = 7--------------------------------------------
x <- generate_msts(seasonal.periods = c(7, 365), n = 800, nComp = 2,output_format="list")

## -----------------------------------------------------------------------------
autoplot(x)

## ----fig.height = 6, fig.width = 7--------------------------------------------
generate_ts_with_target(
  n = 1, ts.length = 60, freq = 1, seasonal = 0,
                        features = c('entropy', 'stl_features'),
                      selected.features = c('entropy', 'trend'),
                        target = c(0.6, 0.9),  
                        parallel=FALSE,
                        output_format = "tsibble"
                        )

## ----fig.height = 6, fig.width = 7--------------------------------------------
x <- generate_ts_with_target(
  n = 1, ts.length = 60, freq = 1, seasonal = 0,
                        features = c('entropy', 'stl_features'),
                      selected.features = c('entropy', 'trend'),
                        target = c(0.6, 0.9),  
                        parallel=FALSE,
                        output_format = "list"
                        )

## -----------------------------------------------------------------------------
autoplot(x)

