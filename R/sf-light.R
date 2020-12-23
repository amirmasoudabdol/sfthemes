#' San Francisco Light Theme
#'
#' @param base_family base_size base font family and size
#' @param plot_title_family plot_title_face,plot_title_size,plot_title_margin
#'  plot tilte family, face, size and margin
#' @param subtitle_family subtitle_face,subtitle_size plot subtitle family,
#' face and size
#' @param subtitle_margin plot subtitle margin bottom (single numeric value)
#' @param strip_text_family strip_text_face,strip_text_size facet label
#' font family, face and size
#' @param caption_family caption_face,caption_size,caption_margin plot caption
#' family, face, size and margin
#' @param axis_title_family axis_title_face,axis_title_size axis title font
#' family, face and size
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
#' @param font_size_scale Scaling fonts
#' @param element_size_scale Scaling element sizes
#' @param offset_x_ticks fancy x tick labels
#' @param offset_y_ticks fancy y tick labels
#' @param scale scale everything
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
#' }
#' @export
theme_sf_light <- function(
               base_family = font_inter,
               base_size = NULL,
               plot_title_family = font_inter_extra_bold,
               plot_title_size = NULL,
               plot_title_face = NULL,
               plot_title_margin = 10,
               subtitle_family = font_inter,
               subtitle_size = NULL,
               subtitle_face = NULL,
               subtitle_margin = 15,
               strip_text_family = font_inter,
               strip_text_size = NULL,
               strip_text_face = NULL,
               caption_family = font_inter,
               caption_size = NULL,
               caption_face = NULL,
               caption_margin = 25,
               axis_text_size = NULL,
               axis_title_family = base_family,
               axis_title_size = NULL,
               axis_title_face = NULL,
               axis_title_just = "rt",
               plot_margin = ggplot2::margin(30, 30, 30, 30),
               grid_col = "#cccccc",
               grid = TRUE,
               axis_col = "#cccccc",
               axis = TRUE,
               ticks = TRUE,
               font_size_scale = "xSmall",
               element_size_scale = "xSmall",
               offset_x_ticks = FALSE,
               offset_y_ticks = FALSE,
               scale = NULL) {
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
    base_family = base_family,
    base_size = base_size,
    plot_title_family = plot_title_family,
    plot_title_size = plot_title_size,
    plot_title_face = plot_title_face,
    plot_title_margin = plot_title_margin,
    subtitle_family = subtitle_family,
    subtitle_size = subtitle_size,
    subtitle_face = subtitle_face,
    subtitle_margin = subtitle_margin,
    strip_text_family = strip_text_family,
    strip_text_size = strip_text_size,
    strip_text_face = strip_text_face,
    caption_family = caption_family,
    caption_size = caption_size,
    caption_face = caption_face,
    caption_margin = caption_margin,
    axis_text_size = axis_text_size,
    text_colour_palette = ios_text_on_light_cols,
    axis_title_family = base_family,
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
    font_size_scale = font_size_scale,
    element_size_scale = element_size_scale,
    offset_x_ticks = offset_x_ticks,
    offset_y_ticks = offset_y_ticks,
    scale = scale
  )

}
