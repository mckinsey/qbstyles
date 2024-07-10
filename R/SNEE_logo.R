#' @rdname SNEE_logo
#' @name SNEE_logo
#' @title SNEE logo
#'
#' @description
#' Pulls SNEE logo from package files for use as an image
#'
#' @param size The size of the logo to be printed in pixels, default = 300px.
#'
#' @return A magick-image object
#'
NULL
#' @export
#' @importFrom magick image_scale image_read
#' @examples
#' \dontrun{# Display SNEE logo in image viewer
#' library(SNEEstyle)
#' SNEE_logo()}
#' @rdname SNEE_logo

SNEE_logo <- function(size = "300") {

  magick::image_scale(
    magick::image_read(
      system.file("images/SNEE_IF_logo.png", package = "SNEEstyle"
                  )
      ),
    geometry = size
    )
}
