#' Academic theme in addition to default ggplot2 themes
#'
#' @param base_size An positive integer
#'
#' @returns A plot with the theme added when passed with ggplot2 (centralized plot title, grid lines removed)
#' @importFrom ggplot2 theme_classic theme element_blank element_text
#' @export
#'
#' @examples
#' library(ggplot2)
#' p <- ggplot(data = mtcars) + geom_point(aes(x = mpg, y = hp)) + labs(title = "plot_title")
#' p + theme_academic()
theme_academic <- function(base_size = 12)
{
  checkmate::assert_number(base_size, lower = 0)

  ggplot2::theme_classic(base_size = base_size) +
    ggplot2::theme(plot.title = ggplot2::element_text(face = "bold", hjust = 0.5),
                   panel.grid.major = ggplot2::element_blank(),
                   panel.grid.minor = ggplot2::element_blank())
}
