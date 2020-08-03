## ----initial, echo = FALSE, cache = FALSE, results = 'hide'-------------------
library(knitr)
opts_chunk$set(
  warning = FALSE, message = FALSE, echo = TRUE,
  fig.width = 7, fig.height = 6, fig.align = 'centre',
  comment = "#>"
)

original <- options("tibble.print_min")
options(tibble.print_min = 5)

# <---- Do stuff with changed option, e.g. print some tibbles ----> 

options(tibble.print_min = original)

## ---- message=FALSE, include = FALSE------------------------------------------
library(forecast)

## ----setup--------------------------------------------------------------------
# load package
library(gratis)

## ----fig.height = 6, fig.width = 7--------------------------------------------
# Generate diverse time series
x <- generate_ts(n.ts = 3, freq = 12, nComp = 2, n = 120)

## ----fig.height = 6, fig.width = 7--------------------------------------------
# N1 time series
x$N1$pars

## ----fig.height = 6, fig.width = 7--------------------------------------------
# plot N1 time series
autoplot(x$N1$x)

## ----fig.height = 6, fig.width = 7--------------------------------------------
# Generate mutiple seasonal time series
x <- generate_msts(seasonal.periods = c(7, 365), n = 800, nComp = 2)

## ----fig.height = 6, fig.width = 7--------------------------------------------
autoplot(x)

## ----fig.height = 6, fig.width = 7--------------------------------------------
x <- generate_ts_with_target(
  n = 1, ts.length = 60, freq = 1, seasonal = 0,
                        features = c('entropy', 'stl_features'),
                      selected.features = c('entropy', 'trend'),
                        target = c(0.6, 0.9),  
                        parallel=FALSE
                        )

## ----fig.height = 6, fig.width = 7--------------------------------------------
autoplot(x)

