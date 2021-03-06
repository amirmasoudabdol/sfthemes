% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/macos-colours.R
\name{macos_light_pal}
\alias{macos_light_pal}
\alias{macos_dark_pal}
\title{macOS Color Palettes}
\usage{
macos_light_pal(order = "contrast", accessible = FALSE, vibrant = FALSE)

macos_dark_pal(order = "contrast", accessible = FALSE, vibrant = FALSE)
}
\arguments{
\item{order}{Indicates the order of colors in the palette}

\item{accessible}{Returns accessible alternative of colors}

\item{vibrant}{Returns vibrant alternative of colors}
}
\description{
Set of color palettes based on
\href{https://developer.apple.com/design/human-interface-guidelines/macos/visual-design/color/}{macOS System Colors}.
General information about each palette can be found in the
\href{../articles/colors.html}{colors} vignette.
}
\details{
These functions are ideal for accessing the raw color values, and can be used
within functions where raw color values are needed, e.g., \link{plot}.
In order to use them with \code{ggplot} functions, you must utilize one of the
followings:
\itemize{
\item \link{scale_colour_macos_light}
\item \link{scale_colour_macos_dark}
}
}
\examples{
library(scales)
scales::show_col(
    macos_light_pal(order = "default", accessible = FALSE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_light_pal(order = "default", accessible = FALSE,
    vibrant = TRUE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_light_pal(order = "default", accessible = TRUE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_light_pal(order = "default", accessible = TRUE,
    vibrant = TRUE)(11),
    borders = NA, labels = FALSE)

scales::show_col(
    macos_light_pal(order = "contrast", accessible = FALSE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_light_pal(order = "contrast", accessible = FALSE,
    vibrant = TRUE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_light_pal(order = "contrast", accessible = TRUE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_light_pal(order = "contrast", accessible = TRUE,
    vibrant = TRUE)(11),
    borders = NA, labels = FALSE)

library(scales)
scales::show_col(
    macos_dark_pal(order = "default", accessible = FALSE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_dark_pal(order = "default", accessible = FALSE,
    vibrant = TRUE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_dark_pal(order = "default", accessible = TRUE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_dark_pal(order = "default", accessible = TRUE,
    vibrant = TRUE)(11),
    borders = NA, labels = FALSE)

scales::show_col(
    macos_dark_pal(order = "contrast", accessible = FALSE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_dark_pal(order = "contrast", accessible = FALSE,
    vibrant = TRUE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_dark_pal(order = "contrast", accessible = TRUE)(11),
    borders = NA, labels = FALSE)
scales::show_col(
    macos_dark_pal(order = "contrast", accessible = TRUE,
    vibrant = TRUE)(11),
    borders = NA, labels = FALSE)

}
