#' A light [ggplot2] theme inspired by Apple's HIG, and occasional appearance of charts in Apple's platforms, i.e.,
#' Apple Health, Screen Time.
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
#' @export
#' @examples \dontrun{
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
#'   theme_ipsum_rc()
#'
#' # seminal bar chart
#'
#' # note: make this font_rc on Windows
#' update_geom_font_defaults(family=font_rc_light)
#'
#' count(mpg, class) %>%
#'   ggplot(aes(class, n)) +
#'   geom_col() +
#'   geom_text(aes(label=n), nudge_y=3) +
#'   labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
#'        title="Seminal ggplot2 bar chart example",
#'        subtitle="A plot that is only useful for demonstration purposes",
#'        caption="Brought to you by the letter 'g'") +
#'   theme_ipsum_rc(grid="Y") +
#'   theme(axis.text.y=element_blank())
#' }
theme_sf_dark <- function(
    base_family="SF Pro Text", base_size = 11.5,
    plot_title_family="SF Pro Text Bold", plot_title_size = 18,
    plot_title_face="plain", plot_title_margin = 10,
    subtitle_family=if (.Platform$OS.type == "windows") "SF Pro Text" else "SF Pro Text Light",
    subtitle_size = 13,
    subtitle_face = "plain", subtitle_margin = 15,
    strip_text_family = "SF Pro Text Medium", strip_text_size = 12,
    strip_text_face = "plain",
    caption_family=if (.Platform$OS.type == "windows") "SF Pro Text" else "SF Pro Text Thin",
    caption_size = 9,
    caption_face = "plain", caption_margin = 10,
    axis_text_size = 9,
    axis_title_family = base_family,
    axis_title_size = 9,
    axis_title_face = "plain",
    axis_title_just = "rt",
    plot_margin = ggplot2::margin(30, 30, 30, 30),
    grid_col = ios_text_on_dark_cols[["white"]], grid = TRUE,
    axis_col = ios_text_on_dark_cols[["white"]], axis = TRUE, ticks = TRUE) {

    sf_base(
        base_family="SF Pro Text", base_size = 11.5,
        plot_title_family="SF Pro Text Bold", plot_title_size = 18,
        plot_title_face="plain", plot_title_margin = 10,
        subtitle_family=if (.Platform$OS.type == "windows") "SF Pro Text" else "SF Pro Text Light",
        subtitle_size = 13,
        subtitle_face = "plain", subtitle_margin = 15,
        strip_text_family = "SF Pro Text Medium", strip_text_size = 12,
        strip_text_face = "plain",
        caption_family=if (.Platform$OS.type == "windows") "SF Pro Text" else "SF Pro Text Thin",
        caption_size = 9,
        caption_face = "plain", caption_margin = 10,
        axis_text_size = 9,
        text_color_palette = ios_text_on_dark_cols,
        axis_title_family = base_family,
        axis_title_size = 9,
        axis_title_face = "plain",
        axis_title_just = "rt",
        plot_background_col = ios_background_cols[["dark_jungle_green"]],
        panel_background_col = ios_background_cols[["dark_jungle_green"]],
        plot_margin = ggplot2::margin(30, 30, 30, 30),
        grid_col = grid_col, grid = TRUE,
        axis_col = axis_col, axis = TRUE, ticks = TRUE)

}