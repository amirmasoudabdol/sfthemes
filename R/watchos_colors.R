watchos_dark_cols <- list(awesome = "#fa114f",
                          red.orange = "#ff3b30",
                          safety.orange = "#ff9500",
                          broom = "#ffe620",
                          malachite = "#04de71",
                          turquoise.blue = "#00f5ea",
                          maya.blue = "#5ac8fa",
                          dodger.blue = "#2094fa",
                          faded.blue = "#787aff",
                          alice.blue = "#f2f4ff")

#' A raw color palette based on watchOS dark color palette
#' @export
watchos_dark_palette <- unname(unlist(watchos_dark_cols))

#' A color palette based on watchOS dark color palette
#'
#' @export
#' @examples \dontrun{
#' library(scales)
#' scales::show_col(watchos_dark_pal()(9), border = NA)
#' }
watchos_dark_pal <- function() {
    scales::manual_pal(watchos_dark_palette)
}

#' watchOS Color Palette
#'
#' Collection of color and fill scales based on watchOS color palette. watchOS uses
#' [a very vibrant color palette](https://developer.apple.com/design/human-interface-guidelines/watchos/visual/color/)
#' to highlight the information in a small screen with a black background.
#'
#' Use this color palette with dark or pure dark themes.
#'
#' @seealso theme_sf_dark
#'
#' ![](watchOS_Dark.png "watchOS Dark Color Palette")
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_watchos
#' @export
scale_colour_watchos_dark <- function(...) {
    ggplot2::discrete_scale("colour", "watchos_dark", watchos_dark_pal(), ...)
}

#' @export
#' @rdname scale_watchos
scale_color_watchos_dark <- scale_colour_watchos_dark

#' @export
#' @rdname scale_watchos
scale_fill_watchos_dark <- function(...) {
    ggplot2::discrete_scale("fill", "watchos_dark", watchos_dark_pal(), ...)
}
