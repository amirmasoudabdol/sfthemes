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


#' A color palette based on iOS Light Palette
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(watchos_light_pal()(9), border = NA)
watchos_dark_pal <- function() {
    scales::manual_pal(watchos_dark_palette)
}

#' Discrete color & fill scales based on the iOS dark Palette
#'
#' See [watchos_dark_palette()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_ios
#' @export
scale_colour_watchos_dark <- function(...) {
    ggplot2::discrete_scale("colour", "watchos_dark", watchos_dark_pal(), ...)
}

#' @export
#' @rdname scale_watchos_dark
scale_color_watchos_dark <- scale_colour_watchos_dark

#' @export
#' @rdname scale_watchos_dark
scale_fill_watchos_dark <- function(...) {
    ggplot2::discrete_scale("fill", "watchos_dark", watchos_dark_pal(), ...)
}
