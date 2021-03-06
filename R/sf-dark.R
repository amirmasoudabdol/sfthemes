#' San Francisco Dark Theme
#'
#' @md
#' @description
#' A minimal theme with dark background inspired by — and adapted from — the
#' occasional appearances of charts used by Apple within different
#' contexts, e.g., [Apple Health](https://www.apple.com/ios/health/) app,
#' [Screen Time on iOS](https://support.apple.com/en-us/HT208982) and macOS.
#'
#' @details
#' Recommended color and fill scales to be used with:
#'
#' - [scale_colour_ios_dark]
#' - [scale_fill_ios_dark]
#' - [scale_colour_macos_dark]
#' - [scale_fill_macos_dark]
#' - [scale_colour_watchos_dark]
#' - [scale_fill_watchos_dark]
#'
#' @inheritParams sf_base
#'
#' @importFrom ggplot2 update_geom_defaults
#'
#' @examples \dontrun{
#' library(ggplot2)
#'
#' ggplot(mpg, aes(x = displ, y = hwy, colour = class)) +
#'   geom_point() +
#'   labs(x = "Displacement", y ="MPG",
#'        color = "Type of Car",
#'        title = "Fuel Economy",
#'        subtitle = "Fuel economy declines as engines get bigger",
#'        caption = "Fuel economy data from 1999 to 2008.") +
#'   theme_sf_dark() +
#'   scale_colour_ios_dark()
#' }
#' @export
theme_sf_dark <- function(
  font_family = "Inter",
  grid = TRUE,
  axis = TRUE,
  ticks = TRUE,
  size_class =  NULL,
  font_size_class = "xSmall",
  element_size_class = "xSmall",
  offset_x_ticks = FALSE,
  offset_y_ticks = FALSE
  ) {


  # Momentary hack for setting the defaults
  update_geom_defaults("point", list(colour = ios_dark_palette[1]))
  update_geom_defaults("line", list(colour = ios_dark_palette[1]))
  update_geom_defaults("area", list(colour = ios_dark_palette[1],
                    fill = ios_dark_palette[1]))
  update_geom_defaults("rect", list(colour = ios_dark_palette[1],
                    fill = ios_dark_palette[1]))
  update_geom_defaults("density", list(colour = ios_dark_palette[1],
                     fill = ios_dark_palette[1]))
  update_geom_defaults("bar", list(colour = ios_dark_palette[1],
                   fill = ios_dark_palette[1]))
  update_geom_defaults("col", list(colour = ios_dark_palette[1],
                   fill = ios_dark_palette[1]))

  sf_base(
    font_family = font_family,
    text_colour_palette = ios_text_on_dark_cols,
    plot_background_col = "#141414",
    panel_background_col = "#141414",
    grid_col = ios_text_on_dark_cols[["label"]],
    grid = TRUE,
    axis_col = ios_text_on_dark_cols[["label"]],
    axis = TRUE,
    ticks = TRUE,
    size_class = size_class,
    font_size_class = font_size_class,
    element_size_class = element_size_class,
    offset_x_ticks = offset_x_ticks,
    offset_y_ticks = offset_y_ticks
  )

}
