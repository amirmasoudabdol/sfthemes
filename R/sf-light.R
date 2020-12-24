#' San Francisco Light Theme
#'
#' @param font_family primary font family of the plot
#' @param subtitle_margin plot subtitle margin bottom (single numeric value)
#' @param axis_title_just axis title font justificationk one of `[blmcrt]`
#' @param axis_text_size font size of axis text
#' @param plot_margin plot margin (specify with [ggplot2::margin])
#' @param grid_col grid color
#' @param grid panel grid (`TRUE`, `FALSE`, or a
#' combination of `X`, `x`, `Y`, `y`)
#' @param axis_col axis color
#' @param axis add x or y axes? `TRUE`, `FALSE`, "`xy`"
#' @param ticks ticks if `TRUE` add ticks
#'
#' @param scale scale everything
#' @param font_size_class Scaling fonts
#' @param element_size_class Scaling element sizes
#' @param offset_x_ticks fancy x tick labels
#' @param offset_y_ticks fancy y tick labels
#'
#' @importFrom ggplot2 update_geom_defaults
#'
#' @examples \dontrun{
#' library(ggplot2); library(sfthemes)
#'
#' ggplot(mpg, aes(x = displ, y = hwy, colour = class)) +
#'   geom_point() +
#'   labs(x="Displacement", y="Highway Miles per Gallon",
#'        color = "Class",
#'        title= "San Francisco Light Theme",
#'        subtitle= "Using iOS Light Color Palette",
#'        caption = "Fuel economy data from 1999 to 2008 for 38
#'         popular models of cars.") +
#'   theme_sf_light() +
#'   scale_colour_ios_light()
#'
#' ggplot(mpg, aes(y = class)) +
#'   geom_bar(aes(fill = drv), color = NA) +
#'   labs(x= "Class", y= "Count",
#'        fill = "Drive",
#'        title= "San Francisco Light Theme",
#'        subtitle= "Using Accessible iOS Light Palette",
#'        caption = "Fuel economy data from 1999 to 2008 for 38
#'         popular models of cars.") +
#'   theme_sf_light() +
#'   scale_fill_ios_light(accessible = TRUE) +
#'   scale_colour_ios_light(accessible = TRUE)
#'
#' }
#' @export
theme_sf_light <- function(
  font_family = "Inter",
  base_size = NULL,
  plot_title_size = NULL,
  plot_title_face = NULL,
  plot_title_margin = 10,
  subtitle_size = NULL,
  subtitle_face = NULL,
  subtitle_margin = 15,
  strip_text_size = NULL,
  strip_text_face = NULL,
  caption_size = NULL,
  caption_face = NULL,
  caption_margin = 25,
  axis_text_size = NULL,
  axis_title_size = NULL,
  axis_title_face = "plain",
  axis_title_just = "rt",
  plot_margin = ggplot2::margin(30, 30, 30, 30),
  grid_col = ios_text_on_light_cols[["label"]],
  grid = TRUE,
  axis_col = ios_text_on_light_cols[["label"]],
  axis = TRUE,
  ticks = TRUE,
  scale = NULL,
  font_size_class = "xSmall",
  element_size_class = "xSmall",
  offset_x_ticks = FALSE,
  offset_y_ticks = FALSE
  ) {


  # Momentary hack for setting the defaults
  update_geom_defaults("point", list(colour = ios_light_palette[1]))
  update_geom_defaults("line", list(colour = ios_light_palette[1]))
  update_geom_defaults("area", list(colour = ios_light_palette[1],
                    fill = ios_light_palette[1]))
  update_geom_defaults("rect", list(colour = ios_light_palette[1],
                    fill = ios_light_palette[1]))
  update_geom_defaults("density", list(colour = ios_light_palette[1],
                     fill = ios_light_palette[1]))
  update_geom_defaults("bar", list(colour = ios_light_palette[1],
                   fill = ios_light_palette[1]))
  update_geom_defaults("col", list(colour = ios_light_palette[1],
                   fill = ios_light_palette[1]))

  sf_base(
    font_family = font_family,
    base_size = base_size,
    plot_title_size = plot_title_size,
    plot_title_face = plot_title_face,
    plot_title_margin = plot_title_margin,
    subtitle_size = subtitle_size,
    subtitle_face = subtitle_face,
    subtitle_margin = subtitle_margin,
    strip_text_size = strip_text_size,
    strip_text_face = strip_text_face,
    caption_size = caption_size,
    caption_face = caption_face,
    caption_margin = caption_margin,
    axis_text_size = axis_text_size,
    text_colour_palette = ios_text_on_light_cols,
    axis_title_size = axis_title_size,
    axis_title_face = axis_title_face,
    axis_title_just = "rt",
    plot_background_col = "#fafafa",
    panel_background_col = "#fafafa",
    plot_margin = ggplot2::margin(30, 30, 30, 30),
    grid_col = grid_col,
    grid = TRUE,
    axis_col = axis_col,
    axis = TRUE,
    ticks = TRUE,
    font_size_class = font_size_class,
    element_size_class = element_size_class,
    offset_x_ticks = offset_x_ticks,
    offset_y_ticks = offset_y_ticks,
    scale = scale
  )

}
