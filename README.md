# euroformix

[![CRAN
status](https://www.r-pkg.org/badges/version/euroformix)](https://cran.r-project.org/package=euroformix)

## Overview

`euroformix` contains procedures for maximization, integration and MCMC of likelihoods of a continuous model for replicated STR DNA mixtures for a general specifications of hypotheses. It also does deconvolution condition on the continuous model. The continuous model takes care of drop-out, drop-in, stutters and degradation. It also contains the graphical layer efm.

## Installation

``` r
# to install just euroformix
install.packages("euroformix")

# to get the latest version from GitHub:
install.packages("devtools")
devtools::install_github("saschawilluweit/euroformix")

# to get a specific version from GitHub:
install.packages("devtools")
devtools::install_github("saschawilluweit/euroformix", ref = "v3.0.0")
```

If you find a bug, please file a minimal reproducible example in the
[issues](https://github.com/saschawilluweit/euroformix/issues).

## Usage

`contLikMLE` optimizes the likelihood of the STR DNA mixture given some assumed a bayesian model.

``` r
library(euroformix)

hypothesis_fit <- contLikMLE(...)
#> lots of documentation needed
```

### Contributing

We welcome contributions of all types\!

If you have never made a pull request to an R package before, `euroformix` is
an excellent place to start. Find an
[issue](https://github.com/saschawilluweit/euroformix/issues/) with the **Beginner
Friendly** tag and comment that you’d like to take it on and we’ll help
you get started.

We encourage typo corrections, bug reports, bug fixes and feature
requests. Feedback on the clarity of the documentation is especially
valuable.
