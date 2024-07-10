#' @rdname scale_fill_SNEE
#' @name scale_fill_SNEE
#' @title SNEE fill scale
#'
#' @description
#' Generates a fill colour scale for ggplot using SNEE colour palettes
#'
#' @param palette Name of palette.
#' @param reverse Sets order of colours. To reverse default order use \code{reverse = TRUE}.
#' @param ... Additional arguments passed to the ggplot function.
#'
#' @return a scale object to be used with a ggplot object
#'
NULL
#' @export
#' @importFrom ggplot2 discrete_scale
#' @examples
#' \dontrun{
#' # Add SNEE fill scale to a plot
#' library(ggplot2)
#' library(SNEEstyle)
#' ggplot(iris, aes(x = Sepal.Width, fill = Species)) +
#' geom_bar(stat = "count", position = "dodge") +
#' scale_fill_SNEE("greens") +
#' SNEE_theme()
#' # or, reverse the scale
#' library(ggplot2)
#' library(SNEEstyle)
#' ggplot(iris, aes(x = Sepal.Width, fill = Species)) +
#' geom_bar(stat = "count", position = "dodge") +
#' scale_fill_SNEE("greens", reverse = TRUE) +
#' SNEE_theme()}
#' @rdname scale_fill_SNEE

scale_fill_SNEE <- function(palette = c("greens", "purples", "pinks", "blues",
                                        "yellows", "diverge", "qual"),
                            reverse = FALSE, ...) {

  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "SNEE_fill",
    palette = SNEE_palette(palette, reverse = reverse),
    na.value = "#8A8A8A",
    ...
  )

}
