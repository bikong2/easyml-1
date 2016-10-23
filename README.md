<!-- README.md is generated from README.Rmd. Please edit that file -->
easyGlmnet
==========

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

Codes for performing penalized linear or logistic regression analysis (e.g., LASSO, elastic net, ridge).

![A typical machine learning workflow](https://github.com/CCS-Lab/easyGlmnet/raw/master/inst/imgs/ml_figure.png "A typical machine learning workflow")

Installation
------------

You can install:

-   the latest released version from CRAN with

    ``` r
    install.packages("easyGlmnet")
    ```

-   the latest development version from github with

    ``` r
    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }
    devtools::install_github("CCS-Lab/easyGlmnet")
    ```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/CCS-Lab/easyGlmnet/issues).

Examples
--------

For a dataset with a binary dependent variable (e.g., cocaineData\_frontiers.txt):

``` r
cocaine_data <- data("cocaine_data", package = "easyGlmnet")
output <- quick_glmnet(data = cocaine_data, dependentVar = "DIAGNOSIS", depCate = "binary", 
                       numIterations = 100, outOfSample = T, excludeVar = c("subject"), categoricalVar = c("Male") )
```

For a dataset with a continuous dependent variable (e.g., prostateData.txt):

``` r
prostate_data <- data("prostate_data", package = "easyGlmnet")
output <- quick_glmnet(data = prostate_data, dependentVar = "lpsa", depCate = "continuous", 
                       numIterations = 100, outOfSample = T)
```

References
----------

Ahn, W.-Y.∗, Ramesh∗, D., Moeller, F. G., & Vassileva, J. (2016) Utility of machine learning approaches to identify behavioral markers for substance use disorders: Impulsivity dimensions as predictors of current cocaine dependence. Frontiers in Psychiatry, 7: 34. [PDF](https://u.osu.edu/ccsl/files/2015/08/Ahn2016_Frontiers-26g6nye.pdf) ∗Co-first authors

Ahn, W.-Y. & Vassileva, J. (2016) Machine-learning identifies substance-specific behavioral markers for opiate and stimulant dependence. Drug and Alcohol Dependence, 161 (1), 247–257. [PDF](https://u.osu.edu/ccsl/files/2016/02/Ahn2016_DAD-oftlf3.pdf)

Ahn, W.-Y., Kishida, K. T., Gu, X., Lohrenz, T., Harvey, A. H., Alford, J. R., Smith, K. B., Yaffe, G., Hibbing, J. R., Dayan, P., & Montague, P. R. (2014) Nonpolitical images evoke neural predictors of political ideology. Current Biology, 24(22), 2693-2599. [PDF](https://u.osu.edu/ccsl/files/2015/11/Ahn2014_CB-1l5475k.pdf) [SOM](https://u.osu.edu/ccsl/files/2015/11/Ahn2014_CB_SOM-1xag1ph.pdf)

People
------

-   The original authors of `easyGlmnet` are [Woo-Young Ahn](http://www.ahnlab.org/) and [Paul Hendricks](https://github.com/paulhendricks).

-   The lead maintainer of `easyGlmnet` is [Paul Hendricks](https://github.com/paulhendricks).