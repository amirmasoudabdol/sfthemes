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
#' @md
#' **Note**: Use this color palette with dark or pure dark themes.
#'
#'
#' @param order Indicates the order of colors in the palette
#'
#' @rdname watchos_color_palettes
#' @export
#' @examples 
#' library(scales)
#' scales::show_col(
#'     watchos_dark_pal(order = "default")(9),
#'     border = NA, labels = FALSE)
#' scales::show_col(
#'     watchos_dark_pal(order = "contrast")(9),
#'     border = NA, labels = FALSE)
watchos_dark_pal <- function(order = "contrast") {
    scales::manual_pal(watchos_dark_palette[watchos_col_order[[order]]])
}

#' watchOS Dark Color Scales
#'
#' @param order Indicates the order of colors in the palette
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

#' @param order Indicates the order of colors in the palette
#'
#' @export
#' @rdname watchos_colors
scale_fill_watchos_dark <- function(order = "contrast", ...) {
    ggplot2::discrete_scale("fill", "watchos_dark", watchos_dark_pal(), ...)
}
