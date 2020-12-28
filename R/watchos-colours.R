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
#' @description Set of color palettes based on [watchOS System Colors](https://developer.apple.com/design/human-interface-guidelines/watchos/visual/color/).
#'  General information about each palette can be found in the [colors](../articles/colors.html) vignette.
#'
#' @details These functions are ideal for accessing the raw color values, and
#'  can be used within functions where raw color values are needed, e.g.,
#'  [plot]. In order to use them with `ggplot` functions, you must utilize one
#'  of the followings:
#'
#' - [scale_colour_watchos_dark]
#'
#' **Note**
#' - We recommend paining this palette with dark themes, as the high
#'   base brightness of colors may make them hard to distinguish in light
#'   themes
#'
#' @param order Indicates the order of colors in the palette
#'
#' @rdname watchos_colour_palettes
#' @examples
#'
#' library(scales)
#'
#'  scales::show_col(watchos_dark_pal(order = "default")(10),
#'                   borders = NA, labels = FALSE)
#'  scales::show_col(watchos_dark_pal(order = "contrast")(10),
#'                   borders = NA, labels = FALSE)
#'
#' @import scales
#' @export
watchos_dark_pal <- function(order = "contrast") {
    scales::manual_pal(watchos_dark_palette[watchos_col_order[[order]]])
}

#' @title watchOS Dark Color Scales
#'
#' @description
#' watchOS colors are very bright but do not necessary have a lot of contrast.
#' We strictly recommend to pair them with dark themes, e.g., `theme_sf_dark()`.
#'
#' **Notes**
#' - *While watchOS color palettes provide a total of 10 colors, we do not
#' recommend using them for more than 7 groups. The last three colors often
#' collide with other colors in the palette and may affect the clarity of your
#' visualization.*
#' - See [watchOS colors](watchos_colour_palettes.html) for more details on raw colors.
#'
#' @param order Indicates the order of colors in the palette
#'
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_colour_watchos_dark
#' @family colour scales
#'
#' @examples \dontrun{
#' 
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(y = mpg, x = as.factor(cyl))) +
#'   geom_boxplot(aes(color = as.factor(cyl), fill = as.factor(cyl))) +
#'   labs(x = "Miles Per Gallon", y = "MPG", 
#'        fill = "Number of Cylinders",
#'        color = "Number of Cylinders",
#'        title = "Fuel Economy",
#'        subtitle = "Fuel economy declines as engines gets bigger",
#'        caption = "Data from the 1974 Motor Trend US magazine.") +
#'   theme_sf_dark() +
#'   scale_fill_watchos_dark() +
#'   scale_colour_watchos_dark()
#' }
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
