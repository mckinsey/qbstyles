# global variables are defined in this file. the file has been named such that
# it will be executed before any other file

# SNEE Theme Colours Vector
#
# The colours that are used in the SNEE Theme. Non-exported.

SNEE_colours <- c(
  # Neutrals
  navy = '#064169',
  black = '#231F20',
  dark_grey = '#595959',
  pale_grey = '#F3F3F3',
  white = '#FFFFFF',
  # Greens
  green = '#0D9C93',
  darkgreen1 = '#0A7C75',
  darkgreen2 = '#075D58',
  lightgreen1 = '#55B9B3',
  lightgreen2 = '#9ED7D3',
  # Purples
  purple = '#55408E',
  darkpurple1 = '#443371',
  darkpurple2 = '#332655',
  lightpurple1 = '#8879AF',
  lightpurple2 = '#BBB2D1',
  # Pinks
  pink = '#B41E8C',
  darkpink1 = '#901870',
  darkpink2 = '#6C1254',
  lightpink1 = '#CA61AE',
  lightpink2 = '#E1A5D1',
  # Blues
  blue = '#005EB8',
  darkblue1 = '#004B93',
  darkblue2 = '#00386E',
  lightblue1 = '#4C8ECD',
  lightblue2 = '#99BEE2',
  # Yellows
  yellow = '#E28C03',
  darkyellow1 = '#B47002',
  darkyellow2 = '#875401',
  lightyellow1 = '#EAAE4E',
  lightyellow2 = '#F3D19A'
)

# SNEE Theme Palettes Vector
#
# The palettes that are used in the SNEE Theme. Non-exported.

SNEE_palettes <- list(
    greens = list(SNEE_colour("darkgreen2"), SNEE_colour("darkgreen1"), SNEE_colour("green"),
                              SNEE_colour("lightgreen1"), SNEE_colour("lightgreen2")),
    purples = list(SNEE_colour("darkpurple2"), SNEE_colour("darkpurple1"), SNEE_colour("purple"),
                   SNEE_colour("lightpurple1"), SNEE_colour("lightpurple2")),
    pinks = list(SNEE_colour("darkpink2"), SNEE_colour("darkpink1"), SNEE_colour("pink"),
                 SNEE_colour("lightpink1"), SNEE_colour("lightpink2")),
    blues = list(SNEE_colour("darkblue2"), SNEE_colour("darkblue1"), SNEE_colour("blue"),
                 SNEE_colour("lightblue1"), SNEE_colour("lightblue2")),
    yellows = list(SNEE_colour("darkyellow2"), SNEE_colour("darkyellow1"), SNEE_colour("yellow"),
                   SNEE_colour("lightyellow1"), SNEE_colour("lightyellow2")),
    diverge = list(SNEE_colour("darkgreen2"), SNEE_colour("darkgreen1"), SNEE_colour("green"),
                   SNEE_colour("lightgreen1"), SNEE_colour("lightgreen2"), SNEE_colour("lightpurple2"),
                   SNEE_colour("lightpurple1"), SNEE_colour("purple"), SNEE_colour("darkpurple1"),
                   SNEE_colour("darkpurple2")),
    qual = list(SNEE_colour("green"), SNEE_colour("purple"), SNEE_colour("pink"), SNEE_colour("blue"),
                SNEE_colour("yellow"))
  )
