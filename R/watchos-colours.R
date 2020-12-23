watchos_dark_cols <- list(
    awesome = "#fa114f",
    red.orange = "#ff3b30",
    safety.orange = "#ff9500",
    broom = "#ffe620",
    malachite = "#04de71",
    turquoise.blue = "#00f5ea",
    maya.blue = "#5ac8fa",
    dodger.blue = "#2094fa",
    faded.blue = "#787aff",
    alice.blue = "#f2f4ff"
)

watchos_dark_palette <- unname(unlist(watchos_dark_cols))

watchos_col_order <-
    list(default = 1:10,
         contrast = c(1, 5, 6, 4, 10, 8, 3, 7,
                      9, 2))

#' @title watchOS Color Palette
#'
#' @md
#' @description Set of color palettes based on [macOS System Colors]
#'  (https://developer.apple.com/design/human-interface-guidelines/watchos/visual/color/).
#'  General information about each palette can be found in the [colors]
#'  (../articles/colors.html) vignette.
#'
#' @details These functions are ideal for accessing the raw color values, and
#'  can be used within functions where raw color values are needed, e.g.,
#'  [plot]. In order to use them with `ggplot` functions, you must utilize one
#'  of the followings:
#'
#' - [scale_colour_watchos_dark]
#'
#' **Note**: We recommend paining this palette with dark themes, as the high
#'   base brightness of colors may make them hard to distinguish in light
#'   themes
#'
#' @param order Indicates the order of colors in the palette
#'
#' @rdname watchos_colour_palettes
#' @export
#' @examples 
#' 
#' library(scales)
#' 
#'  scales::show_col(watchos_dark_pal(order = "default")(10),
#'                   borders = NA, labels = FALSE)
#'  scales::show_col(watchos_dark_pal(order = "contrast")(10),
#'                   borders = NA, labels = FALSE)
watchos_dark_pal <- function(order = "contrast") {
    scales::manual_pal(watchos_dark_palette[watchos_col_order[[order]]])
}

#' @title watchOS Color Scales
#'
#' @description Description of the colors
#'
#' @param order Indicates the order of colors in the palette
#'
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_colour_watchos_dark
#' @family colour scales
#' @export
scale_colour_watchos_dark <- function(order = "contrast", ...) {
    ggplot2::discrete_scale("colour", "watchos_dark", watchos_dark_pal(), ...)
}

#' @param order Indicates the order of colors in the palette
#'
#' @export
#' @rdname scale_colour_watchos_dark
scale_fill_watchos_dark <- function(order = "contrast", ...) {
    ggplot2::discrete_scale("fill", "watchos_dark", watchos_dark_pal(), ...)
}
