#' Split a string
#'
#' @param x A character vector with one element
#' @param split A character to split on
#'
#' @returns A character vector
#' @export
#'
#' @examples
#' strsplit1("alpha,bravo", split = ",")
strsplit1 <- function(x, split)
{
  checkmate::assert_string(x)
  checkmate::assert_string(split)

  strsplit(x, split = split)[[1]]
}
