#' @rdname SNEE_colour
#' @name SNEE_colour
#' @title SNEE colour
#'
#' @description
#' This function returns the colours that are used in the SNEE theme as
#' a named vector of RGB values in hexadecimal form.
#'
#' If no arguments are passed to the function, then all of the colours are
#' returned. If only specific colours are required, then the names of the
#' colours that are required can be passed as strings to the function, and only
#' those colours will be returned.
#'
#' If a palette is selected then no arguments should be passed to ...
#'
#' Only one palette can be selected at a time.
#'
#' @param ... individual colours that you wish to get the values of
#' @param palette a name of a palette to select the colours of
#' @param named specify whether colour names should be included (default = FALSE)
#'
#' @return a named vector of RGB colours in hexadecimal form
#' @export
#'
#' @examples
#' # show all of the colours
#' SNEE_colour()
#' # or, just show some colours
#' SNEE_colour("green")
#' # or, select a single palette
#' SNEE_colour(palette = "greens")

SNEE_colour <- function(...,
                          named = FALSE,
                          palette = c(
                            NA,
                            "greens",
                            "purples",
                            "pinks",
                            "blues",
                            "yellows",
                            "diverge",
                            "qual"
                          )) {
  # take the ... argument's and convert to a unique vector
  dots <- unique(c(...))
  # verify that the palette argument is valid, i.e. it is in the list of allowed
  # values (from the argument definition)
  pallete <- match.arg(palette)

  # if a palette has not been selected, then return the selected colours
  if (is.na(pallete)) {
    # if no colour's have been specified, then select all
    if (length(dots) < 1) {
      dots <- names(SNEE_colours)
    }

    return_colours <- SNEE_colours[dots]

    # remove names from colours
    if (!named) {
      names(return_colours) <- NULL
    }

    # immediately return the selected colours
    return(return_colours)
  }

  # if we are selecting a palette then we shouldn't be specifying colours to
  # select
  if (length(dots) > 0) {
    stop("Cannot specify both colours and a palette")
  }

  # return the colours that are part of this palette
  colours <- switch(palette,
                    "greens" = c("darkgreen2", "darkgreen1", "green", "lightgreen1", "lightgreen2"),
                    "purples" = c("darkpurple2", "darkpurple1", "purple", "lightpurple1", "lightpurple2"),
                    "pinks" = c("darkpink2", "darkpink1", "pink", "lightpink1", "lightpink2"),
                    "blues" = c("darkblue2", "darkblue1", "blue", "lightblue1", "lightblue2"),
                    "yellows" = c("darkyellow2", "darkyellow1", "yellow", "lightyellow1", "lightyellow2"),
                    "diverge" = c("darkgreen2", "darkgreen1", "green", "lightgreen1", "lightgreen2", "lightpurple2", "lightpurple1", "purple", "darkpurple1", "darkpurple2"),
                    "qual" = c("green", "purple", "pink", "blue", "yellow")
                    )

  # return the colours from the selected palette
  return_palette_colours <- SNEE_colours[colours]

  # remove names from colours
  if (!named) {
    names(return_palette_colours) <- NULL
  }

  return(return_palette_colours)
}
