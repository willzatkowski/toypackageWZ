min_max_scale <- function(x)
{
  y <- (x - min(x, na.rm = TRUE))/(max(x, na.rm = TRUE) - min(x, na.rm = TRUE))

  return(y)
}
