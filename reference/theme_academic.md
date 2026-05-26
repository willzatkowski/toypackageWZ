# Academic theme in addition to default ggplot2 themes

Academic theme in addition to default ggplot2 themes

## Usage

``` r
theme_academic(base_size = 12)
```

## Arguments

- base_size:

  An positive integer

## Value

A plot with the theme added when passed with ggplot2 (centralized plot
title, grid lines removed)

## Examples

``` r
library(ggplot2)
p <- ggplot(data = mtcars) + geom_point(aes(x = mpg, y = hp)) + labs(title = "plot_title")
p + theme_academic()
```
