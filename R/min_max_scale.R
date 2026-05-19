#' Scaling by min-max
#'
#' @param x A numeric vector
#'
#' @returns A numeric vector
#' @export
#'
#' @examples
#' x <- 1:5
#' min_max_scale(x)
min_max_scale <- function(x)
{
  checkmate::assert_numeric(x)

  y <- (x - min(x, na.rm = TRUE))/(max(x, na.rm = TRUE) - min(x, na.rm = TRUE))

  return(y)
}
