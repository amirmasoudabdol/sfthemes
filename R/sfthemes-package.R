#' @title
#' San Francisco Themes
#' 
#' @description
#' An Accessible Set of Themes and Color Palettes Optimized for Light/Dark 
#' Appearances, and Different Screen Sizes
#'
#' @details
#' sfthemes is a pair of [`ggplot2`](https://ggplot2.tidyverse.org) themes,
#' `theme_sf_light()`, `theme_sf_dark()`, and a collection of color scales based
#' on [Apple's Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/). 
#' Themes are inspired by the occasional appearances of charts used by Apple within different
#' contexts, e.g., Apple Health app, Screen Time on iOS and macOS. And colors are
#' adapted from iOS, macOS, and watchOS system colors. Each color scale has a
#' light and dark variant as well that compliments the light/dark themes,
#' `scale_colour_ios_light()` and `scale_colour_ios_dark()`, respectively. In
#' addition, sfthemes uses [dynamic type sizing](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/typography/)
#' in order to provide a consistent and elegant overall resizing and re-scaling of
#' plot elements. Read more [here](articles/typography.html).
#' 
#' When combined, sfthemes offers a unique opportunity to generate two version of
#' your plot with two *similar* yet *individually* optimized color palettes for
#' light and dark themes.
#'
#' @md
#' @name sfthemes
#' @docType package
#' @author Amir Masoud Abdol (i@amirmasoudabdol.name)
#' @keywords internal
#' @import ggplot2 scales extrafont
"_PACKAGE"