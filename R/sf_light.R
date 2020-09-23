#' A light [ggplot2] theme inspired by Apple's HIG, and occasional appearance of charts in Apple's platforms, i.e.,
#' Apple Health, Screen Time.
#'
#' @md
#' @section Why IBM Plex Sans?:
#' It's free, has tolerable kerning pairs and multiple weights. It's also different
#' "not Helvetica".
#'
#' @md
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
#' @param font_size_scale Scaling fonts
#' 
#' @export
#' @inheritParams sfthemes::sf_base
#' @family themes sflight
#' @examples
#' library(ggplot2)
#' library(dplyr)
#'
#' # seminal scatterplot
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point() +
#'   labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
#'        title="Seminal ggplot2 scatterplot example",
#'        subtitle="A plot that is only useful for demonstration purposes",
#'        caption="Brought to you by the letter 'g'") +
#'   theme_sf_light()
#'
#' # seminal bar chart
#'
#' count(mpg, class) %>%
#'   ggplot(aes(class, n)) +
#'   geom_col() +
#'   geom_text(aes(label=n), nudge_y=3) +
#'   labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
#'        title="Seminal ggplot2 bar chart example",
#'        subtitle="A plot that is only useful for demonstration purposes",
#'        caption="Brought to you by the letter 'g'") +
#'   theme_sf_light(grid="Y") +
#'   theme(axis.text.y=element_blank())
theme_sf_light <- function(
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
    grid_col = "#cccccc", grid = TRUE,
    axis_col = "#cccccc", axis = TRUE, ticks = TRUE,
    font_size_scale = "xSmall",
    element_size_scale = "xSmall",
    offset_x_ticks = FALSE,
    offset_y_ticks = FALSE,
    scale = NULL) {


    # Momentary hack for setting the defaults
    update_geom_defaults("point", list(colour = ios_light_palette[1]))
    update_geom_defaults("line", list(colour = ios_light_palette[1]))
    update_geom_defaults("area", list(colour = ios_light_palette[1], fill=ios_light_palette[1]))
    update_geom_defaults("rect", list(colour = ios_light_palette[1], fill=ios_light_palette[1]))
    update_geom_defaults("density", list(colour = ios_light_palette[1], fill=ios_light_palette[1]))
    update_geom_defaults("bar", list(colour = ios_light_palette[1], fill=ios_light_palette[1]))
    update_geom_defaults("col", list(colour = ios_light_palette[1], fill=ios_light_palette[1]))

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
        axis_title_family = base_family,
        axis_title_size = axis_title_size,
        axis_title_face = "plain",
        axis_title_just = "rt",
        plot_margin = ggplot2::margin(30, 30, 30, 30),
        grid_col = "#cccccc", grid = TRUE,
        axis_col = "#cccccc", axis = TRUE, ticks = TRUE,
        font_size_scale = font_size_scale,
        element_size_scale = element_size_scale,
        offset_x_ticks = offset_x_ticks,
        offset_y_ticks = offset_y_ticks,
        scale = scale)

}
