#' @rdname scale_colour_SNEE
#' @name scale_colour_SNEE
#' @title SNEE colour scale
#'
#' @description
#' Generates a colour scale for ggplot using SNEE colour palettes
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
#' \dontrun{# Add SNEE colour scale to a plot
#' library(ggplot2)
#' library(SNEEstyle)
#' ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, colour = Species)) +
#' geom_point() +
#' scale_colour_SNEE("greens") +
#' SNEE_theme()
#' # or, reverse the scale
#' library(ggplot2)
#' library(SNEEstyle)
#' ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, colour = Species)) +
#' geom_point() +
#' scale_colour_SNEE("greens", reverse = TRUE) +
#' SNEE_theme()}
#' @rdname scale_colour_SNEE

scale_colour_SNEE <- function(palette = c("greens", "purples", "pinks", "blues",
                                          "yellows", "diverge", "qual"),
                              reverse = FALSE, ...) {

  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "SNEE_colour",
    palette = SNEE_palette(palette, reverse = reverse),
    na.value = "#8A8A8A",
    ...
  )

}
