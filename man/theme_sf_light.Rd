% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sf-light.R
\name{theme_sf_light}
\alias{theme_sf_light}
\title{San Francisco Light Theme}
\usage{
theme_sf_light(
  font_family = "Inter",
  grid = TRUE,
  axis = TRUE,
  ticks = TRUE,
  size_class = NULL,
  font_size_class = "xSmall",
  element_size_class = "xSmall",
  offset_x_ticks = FALSE,
  offset_y_ticks = FALSE
)
}
\arguments{
\item{font_family}{Primary font family of the plot}

\item{grid}{Panel grid (\code{TRUE}, \code{FALSE}, or a
combination of \code{X}, \code{x}, \code{Y}, \code{y})}

\item{axis}{Add x or y axes? \code{TRUE}, \code{FALSE}, "\code{xy}"}

\item{ticks}{Ticks if \code{TRUE} add ticks}

\item{size_class}{Resizes texts and elements based on one of the given \href{../articles/size_classes.html}{size classes}:
\itemize{
\item A \code{character} from {"xSmall", "Small", "Medium", "Large", "xLarge", "xxLarge", "xxxLarge"}
}}

\item{font_size_class}{Only resizes text based on one of the above size classes}

\item{element_size_class}{Only resizes elements based on one of the above size classes}

\item{offset_x_ticks}{Fancier x tick labels [Experimental]}

\item{offset_y_ticks}{Fancier y tick labels [Experimental]}
}
\description{
A minimal theme with light background inspired by — and adapted from — the
occasional appearances of charts used by Apple within different
contexts, e.g., \href{https://www.apple.com/ios/health/}{Apple Health} app,
\href{https://support.apple.com/en-us/HT208982}{Screen Time on iOS} and macOS.
}
\details{
Recommended color and fill scales to be used with:
\itemize{
\item \link{scale_colour_ios_light}
\item \link{scale_fill_ios_light}
\item \link{scale_colour_macos_light}
\item \link{scale_fill_macos_light}
}
}
\examples{
\dontrun{
library(ggplot2)

ggplot(mpg, aes(x = displ, y = hwy, colour = class)) +
  geom_point() +
  labs(x = "Displacement", y ="MPG",
       color = "Type of Car",
       title = "Fuel Economy",
       subtitle = "Fuel economy declines as engines get bigger",
       caption = "Fuel economy data from 1999 to 2008.") +
  theme_sf_light() +
  scale_colour_ios_light()
}
}
