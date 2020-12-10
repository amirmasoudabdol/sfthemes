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

watchos_dark_palette <- unname(unlist(watchos_dark_cols))

watchos_col_order <- list(default = 1:10,
                          contrast = c(1, 5, 6, 4, 10, 8, 3, 7, 9, 2))

#' watchOS Color Palette
#'
#' Collection of color and fill scales based on watchOS color palette. watchOS uses
#' [a very vibrant color palette](https://developer.apple.com/design/human-interface-guidelines/watchos/visual/color/)
#' to highlight the information in a small screen with a black background.
#'
#' Use this color palette with dark or pure dark themes.
#'
#' ![](watchOS_Dark.png "watchOS Dark Color Palette")
#'
#' @rdname watchos_color_palettes
#' @export
#' @examples \dontrun{
#' library(scales)
#' scales::show_col(watchos_dark_pal()(9), border = NA)
#' }
watchos_dark_pal <- function(order = "contrast") {
    scales::manual_pal(watchos_dark_palette[watchos_col_order[[order]]])
}

#' watchOS Dark Color Scales
#'
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname watchos_colors
#' @export
scale_colour_watchos_dark <- function(order = "contrast", ...) {
    ggplot2::discrete_scale("colour", "watchos_dark", watchos_dark_pal(), ...)
}

#' @export
#' @rdname watchos_colors
scale_color_watchos_dark <- scale_colour_watchos_dark

#' @export
#' @rdname watchos_colors
scale_fill_watchos_dark <- function(order = "contrast", ...) {
    ggplot2::discrete_scale("fill", "watchos_dark", watchos_dark_pal(), ...)
}
