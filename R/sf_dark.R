#' San Francisco Dark Theme
#'
#' @param base_family,base_size base font family and size
#' @param plot_title_family,plot_title_face,plot_title_size,plot_title_margin plot tilte family, face, size and margin
#' @param subtitle_family,subtitle_face,subtitle_size plot subtitle family, face and size
#' @param subtitle_margin plot subtitle margin bottom (single numeric value)
#' @param strip_text_family,strip_text_face,strip_text_size facet label font family, face and size
#' @param caption_family,caption_face,caption_size,caption_margin plot caption family, face, size and margin
#' @param axis_title_family,axis_title_face,axis_title_size axis title font family, face and size
#' @param axis_title_just axis title font justificationk one of `[blmcrt]`
#' @param axis_text_size font size of axis text
#' @param plot_margin plot margin (specify with [ggplot2::margin])
#' @param grid_col grid color
#' @param grid panel grid (`TRUE`, `FALSE`, or a combination of `X`, `x`, `Y`, `y`)
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
#' @examples
#' library(ggplot2)
#'
#' ggplot(mpg, aes(x = displ, y = hwy, colour = class)) +
#'   geom_point() +
#'   labs(x="Displacement", y="Highway Miles per Gallon",
#'        color = "Class",
#'        title="San Francisco Dark Theme",
#'        subtitle="Using iOS Dark Color Palette",
#'        caption = "Fuel economy data from 1999 to 2008 for 38 popular models of cars.") +
#'   theme_sf_dark() +
#'   scale_color_ios_dark()
#'
#' ggplot(mpg, aes(class)) +
#'   geom_bar(aes(fill = drv, color = NA)) +
#'   labs(x="Class", y="Count",
#'        fill = "Drive",
#'        title="San Francisco Dark Theme",
#'        subtitle="Using Accessible iOS Dark Palette",
#'        caption = "Fuel economy data from 1999 to 2008 for 38 popular models of cars.") +
#'   theme_sf_dark() +
#'   scale_fill_ios_dark(accessible = TRUE) +
#'   scale_color_ios_dark(accessible = TRUE)
#'
#' @export
theme_sf_dark <- function(
    base_family="Inter", base_size = NULL,
    plot_title_family="Inter Bold", plot_title_size = NULL,
    plot_title_face="plain", plot_title_margin = 10,
    subtitle_family=if (.Platform$OS.type == "windows") "Inter" else "Inter Light",
    subtitle_size = NULL,
    subtitle_face = "plain", subtitle_margin = 15,
    strip_text_family = "Inter Medium", strip_text_size = NULL,
    strip_text_face = "plain",
    caption_family=if (.Platform$OS.type == "windows") "Inter" else "Inter Thin",
    caption_size = NULL,
    caption_face = "plain", caption_margin = 10,
    axis_text_size = NULL,
    axis_title_family = base_family,
    axis_title_size = NULL,
    axis_title_face = "plain",
    axis_title_just = "rt",
    plot_margin = ggplot2::margin(30, 30, 30, 30),
    grid_col = ios_text_on_dark_cols[["white"]], grid = TRUE,
    axis_col = ios_text_on_dark_cols[["white"]], axis = TRUE, ticks = TRUE,
    font_size_scale = "xSmall",
    element_size_scale = "xSmall",
    offset_x_ticks = FALSE,
    offset_y_ticks = FALSE,
    scale = NULL) {

    # Momentary hack for setting the defaults
    update_geom_defaults("point", list(colour = ios_dark_palette[1]))
    update_geom_defaults("line", list(colour = ios_dark_palette[1]))
    update_geom_defaults("area", list(colour = ios_dark_palette[1], fill=ios_dark_palette[1]))
    update_geom_defaults("rect", list(colour = ios_dark_palette[1], fill=ios_dark_palette[1]))
    update_geom_defaults("density", list(colour = ios_dark_palette[1], fill=ios_dark_palette[1]))
    update_geom_defaults("bar", list(colour = ios_dark_palette[1], fill=ios_dark_palette[1]))
    update_geom_defaults("col", list(colour = ios_dark_palette[1], fill=ios_dark_palette[1]))

    sf_base(
        base_family="Inter", base_size = base_size,
        plot_title_family="Inter Bold", plot_title_size = plot_title_size,
        plot_title_face="plain", plot_title_margin = 10,
        subtitle_family=if (.Platform$OS.type == "windows") "Inter" else "Inter Light",
        subtitle_size = subtitle_size,
        subtitle_face = "plain", subtitle_margin = 15,
        strip_text_family = "Inter Medium", strip_text_size = strip_text_size,
        strip_text_face = "plain",
        caption_family=if (.Platform$OS.type == "windows") "Inter" else "Inter Thin",
        caption_size = caption_size,
        caption_face = "plain", caption_margin = 10,
        axis_text_size = axis_text_size,
        text_color_palette = ios_text_on_dark_cols,
        axis_title_family = base_family,
        axis_title_size = axis_title_size,
        axis_title_face = "plain",
        axis_title_just = "rt",
        plot_background_col = "#141414",
        panel_background_col = "#141414",
        plot_margin = ggplot2::margin(30, 30, 30, 30),
        grid_col = grid_col, grid = TRUE,
        axis_col = axis_col, axis = TRUE, ticks = TRUE,
        font_size_scale = font_size_scale,
        element_size_scale = element_size_scale,
        offset_x_ticks = offset_x_ticks,
        offset_y_ticks = offset_y_ticks,
        scale = scale)

}
