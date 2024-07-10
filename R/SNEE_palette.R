# SNEE Palette
#
# This function is not exported. It generates the colour palettes that are used
# in scale_fill_SNEE and scale_colour_SNEE
#
# @param palette Name of palette.
# @param reverse Sets order of colours. To reverse default order use \code{reverse = TRUE}.

SNEE_palette <- function(palette = c("greens", "purples", "pinks", "blues",
                                     "yellows", "diverge", "qual"),
                         reverse = FALSE) {

  `%notin%` <- Negate(`%in%`)

  palette_choice <- SNEE_palettes[[palette]]

  function(n) {

    if (n > length(palette_choice)){
      stop("Number of requested colours greater than what palette can offer, use another palette.")
    }

    out <- if (reverse == FALSE) {
      if (palette != "diverge" & palette != "qual") {
        if (n == 1) {
          palette_choice[[3]]
        } else if (n == 2) {
          c(palette_choice[[3]], palette_choice[[5]])
        } else if (n == 3) {
          c(palette_choice[[1]], palette_choice[[3]], palette_choice[[5]])
        } else if (n == 4) {
          c(palette_choice[[1]], palette_choice[[3]], palette_choice[[4]], palette_choice[[5]])
        } else if (n == 5) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]], palette_choice[[4]], palette_choice[[5]])
        }
      } else if (palette == "diverge") {
        if (n == 1) {
          palette_choice[[3]]
        } else if (n == 2) {
          c(palette_choice[[3]], palette_choice[[8]])
        } else if (n == 3) {
          c(palette_choice[[3]], palette_choice[[7]], palette_choice[[8]])
        } else if (n == 4) {
          c(palette_choice[[3]], palette_choice[[4]], palette_choice[[7]], palette_choice[[8]])
        } else if (n == 5) {
          c(palette_choice[[2]], palette_choice[[3]], palette_choice[[4]], palette_choice[[7]], palette_choice[[8]])
        } else if (n == 6) {
          c(palette_choice[[2]], palette_choice[[3]], palette_choice[[4]], palette_choice[[7]], palette_choice[[8]], palette_choice[[9]])
        } else if (n == 7) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]], palette_choice[[4]], palette_choice[[7]], palette_choice[[8]], palette_choice[[9]])
        } else if (n == 8) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]], palette_choice[[4]], palette_choice[[7]], palette_choice[[8]], palette_choice[[9]], palette_choice[[10]])
        } else if (n == 9) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]], palette_choice[[4]], palette_choice[[5]], palette_choice[[7]], palette_choice[[8]], palette_choice[[9]], palette_choice[[10]])
        } else if (n == 10) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]], palette_choice[[4]], palette_choice[[5]], palette_choice[[6]], palette_choice[[7]], palette_choice[[8]], palette_choice[[9]], palette_choice[[10]])
        }
      }
      else {
        if (n == 1) {
          palette_choice[[1]]
        }
        else if (n == 2) {
          c(palette_choice[[1]], palette_choice[[2]])
        }
        else if (n == 3) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]])
        }
        else if (n == 4) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]], palette_choice[[4]])
        }
        else if (n == 5) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]], palette_choice[[4]], palette_choice[[5]])
        }
      }
    } else {
      if (palette != "diverge" & palette != "qual") {
        if (n == 1) {
          palette_choice[[3]]
        } else if (n == 2) {
          c(palette_choice[[3]], palette_choice[[1]])
        } else if (n == 3) {
          c(palette_choice[[5]], palette_choice[[3]], palette_choice[[1]])
        } else if (n == 4) {
          c(palette_choice[[5]], palette_choice[[3]], palette_choice[[2]], palette_choice[[1]])
        } else if (n == 5) {
          c(palette_choice[[5]], palette_choice[[4]], palette_choice[[3]], palette_choice[[2]], palette_choice[[1]])
        }
      } else if (palette == "diverge") {
        if (n == 1) {
          palette_choice[[8]]
        } else if (n == 2) {
          c(palette_choice[[8]], palette_choice[[3]])
        } else if (n == 3) {
          c(palette_choice[[8]], palette_choice[[4]], palette_choice[[3]])
        } else if (n == 4) {
          c(palette_choice[[8]], palette_choice[[7]], palette_choice[[4]], palette_choice[[3]])
        } else if (n == 5) {
          c(palette_choice[[9]], palette_choice[[8]], palette_choice[[7]], palette_choice[[4]], palette_choice[[3]])
        } else if (n == 6) {
          c(palette_choice[[9]], palette_choice[[8]], palette_choice[[7]], palette_choice[[4]], palette_choice[[3]], palette_choice[[2]])
        } else if (n == 7) {
          c(palette_choice[[10]], palette_choice[[9]], palette_choice[[8]], palette_choice[[7]], palette_choice[[4]], palette_choice[[3]], palette_choice[[2]])
        } else if (n == 8) {
          c(palette_choice[[10]], palette_choice[[9]], palette_choice[[8]], palette_choice[[7]], palette_choice[[4]], palette_choice[[3]], palette_choice[[2]], palette_choice[[1]])
        } else if (n == 9) {
          c(palette_choice[[10]], palette_choice[[9]], palette_choice[[8]], palette_choice[[7]], palette_choice[[6]], palette_choice[[4]], palette_choice[[3]], palette_choice[[2]], palette_choice[[1]])
        } else if (n == 10) {
          c(palette_choice[[10]], palette_choice[[9]], palette_choice[[8]], palette_choice[[7]], palette_choice[[6]], palette_choice[[5]], palette_choice[[4]], palette_choice[[3]], palette_choice[[2]], palette_choice[[1]])
        }
      } else {
        if (n == 1) {
          palette_choice[[1]]
        }
        else if (n == 2) {
          c(palette_choice[[1]], palette_choice[[2]])
        }
        else if (n == 3) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]])
        }
        else if (n == 4) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]], palette_choice[[4]])
        }
        else if (n == 5) {
          c(palette_choice[[1]], palette_choice[[2]], palette_choice[[3]], palette_choice[[4]], palette_choice[[5]])
        }
      }
    }

    return(out)

  }

}
