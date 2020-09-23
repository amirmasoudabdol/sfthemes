#' A base theme for both SF Light and SF Dark
#'
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
#' @importFrom ggplot2 margin theme
sf_base <- function(
    base_family="Inter", base_size = 11.5,
    plot_title_family="Inter Bold", plot_title_size = 18,
    plot_title_face="plain", plot_title_margin = 10,
    subtitle_family=if (.Platform$OS.type == "windows") "Inter" else "Inter Light",
    subtitle_size = 13,
    subtitle_face = "plain", subtitle_margin = 15,
    strip_text_family = "Inter Medium", strip_text_size = 12,
    strip_text_face = "plain",
    caption_family=if (.Platform$OS.type == "windows") "Inter" else "Inter Thin",
    caption_size = 9,
    caption_face = "plain", caption_margin = 10,
    axis_text_size = 9,
    text_color_palette = ios_text_on_light_cols,
    axis_title_family = base_family,
    axis_title_size = 9,
    axis_title_face = "plain",
    axis_title_just = "rt",
    plot_background_col = "white",
    panel_background_col = "white",
    plot_margin = margin(30, 30, 30, 30),
    grid_col = "#cccccc", grid = TRUE,
    axis_col = "#cccccc", axis = TRUE, ticks = TRUE,
    font_size_scale = "xSmall") {

    font_scale <- sf_scale(font_size_scale);

    base_size = font_scale[['sizes']][['body']]
    plot_title_size = font_scale[['sizes']][['headline']]
    subtitle_size = font_scale[['sizes']][['subhead']]
    strip_text_size = font_scale[['sizes']][['footnote']]
    caption_size = font_scale[['sizes']][['caption_1']]
    axis_text_size = font_scale[['sizes']][['caption_1']]
    axis_title_size = font_scale[['sizes']][['caption_1']]

    ret <- ggplot2::theme_minimal(base_family = base_family, base_size = base_size)

    ret <- ret + ggplot2::theme(legend.background = ggplot2::element_blank())
    ret <- ret + ggplot2::theme(legend.key = ggplot2::element_blank())

    ret <- ret + ggplot2::theme(plot.background = ggplot2::element_rect(fill = plot_background_col, color = plot_background_col))
    # ret <- ret + ggplot2::theme(panel.background = ggplot2::element_rect(fill = panel_background_col, color = text_color_palette[["label"]]))
    # ret <- ret + ggplot2::theme(panel.grid = )

    # Grids
    if (inherits(grid, "character") | grid == TRUE) {

        ret <- ret + ggplot2::theme(panel.grid = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], size = 0.2))
        ret <- ret + ggplot2::theme(panel.grid.major.x = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], linetype = "dotted", size = 0.3))
        ret <- ret + ggplot2::theme(panel.grid.minor.x = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], linetype = "dotted", size = 0.1))

        ret <- ret + ggplot2::theme(panel.grid.major.y = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], linetype = "solid", size = 0.2))
        ret <- ret + ggplot2::theme(panel.grid.minor.y = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], linetype = "solid", size = 0.1))

        if (inherits(grid, "character")) {
            if (regexpr("X", grid)[1] < 0) ret <- ret + ggplot2::theme(panel.grid.major.x = ggplot2::element_blank())
            if (regexpr("Y", grid)[1] < 0) ret <- ret + ggplot2::theme(panel.grid.major.y = ggplot2::element_blank())
            if (regexpr("x", grid)[1] < 0) ret <- ret + ggplot2::theme(panel.grid.minor.x = ggplot2::element_blank())
            if (regexpr("y", grid)[1] < 0) ret <- ret + ggplot2::theme(panel.grid.minor.y = ggplot2::element_blank())
        }

    } else {
        ret <- ret + ggplot2::theme(panel.grid = ggplot2::element_blank())
    }

    if (inherits(axis, "character") | axis == TRUE) {
        ret <- ret + ggplot2::theme(axis.line = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], size = 0.2))
        if (inherits(axis, "character")) {
            axis <- tolower(axis)
            if (regexpr("x", axis)[1] < 0) {
                ret <- ret + ggplot2::theme(axis.line.x = ggplot2::element_blank())
            } else {
                ret <- ret + ggplot2::theme(axis.line.x = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], size = 0.2))
            }
            if (regexpr("y", axis)[1] < 0) {
                ret <- ret + ggplot2::theme(axis.line.y = ggplot2::element_blank())
            } else {
                ret <- ret + ggplot2::theme(axis.line.y = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], size = 0.2))
            }
        } else {
            ret <- ret + ggplot2::theme(axis.line.x = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], size = 0.2))
            ret <- ret + ggplot2::theme(axis.line.y = ggplot2::element_line(color = text_color_palette[["secondaryLabel"]], size = 0.2))
        }
    } else {
        ret <- ret + ggplot2::theme(axis.line = ggplot2::element_blank())
    }

    if (!ticks) {
        ret <- ret + ggplot2::theme(axis.ticks = ggplot2::element_blank())
        ret <- ret + ggplot2::theme(axis.ticks.x = ggplot2::element_blank())
        ret <- ret + ggplot2::theme(axis.ticks.y = ggplot2::element_blank())
    } else {
        ret <- ret + ggplot2::theme(axis.ticks = ggplot2::element_line(linetype = "dotted", color = text_color_palette[["secondaryLabel"]], size = 0.3))
        ret <- ret + ggplot2::theme(axis.ticks.x = ggplot2::element_line(linetype = "dotted", color = text_color_palette[["secondaryLabel"]], size = 0.3))
        ret <- ret + ggplot2::theme(axis.ticks.length.x = grid::unit(20, "pt"))

        ret <- ret + ggplot2::theme(axis.ticks.y = ggplot2::element_blank())
    }

    xj <- switch(tolower(substr(axis_title_just, 1, 1)), b=0, l=0, m=0.5, c=0.5, r=1, t=1)
    yj <- switch(tolower(substr(axis_title_just, 2, 2)), b=0, l=0, m=0.5, c=0.5, r=1, t=1)

    ret <- ret + ggplot2::theme(axis.text.x = ggplot2::element_text(color = text_color_palette[["label"]], size = axis_text_size, margin = ggplot2::margin(t = -5, b = 5), hjust = -.3))
    ret <- ret + ggplot2::theme(axis.text.y = ggplot2::element_text(color = text_color_palette[["label"]], size = axis_text_size, margin = ggplot2::margin(r = 0)))
    ret <- ret + ggplot2::theme(axis.title = ggplot2::element_text(color = text_color_palette[["label"]], size = axis_title_size, family=axis_title_family))
    ret <- ret + ggplot2::theme(axis.title.x = ggplot2::element_text(color = text_color_palette[["label"]], hjust = xj, size = axis_title_size,
                                                 family=axis_title_family, face=axis_title_face))
    ret <- ret + ggplot2::theme(axis.title.y = ggplot2::element_text(color = text_color_palette[["label"]], hjust = yj, size = axis_title_size,
                                                 family=axis_title_family, face=axis_title_face))
    ret <- ret + ggplot2::theme(axis.title.y.right = ggplot2::element_text(color = text_color_palette[["label"]], hjust = yj, size = axis_title_size, angle=90,
                                                       family=axis_title_family, face=axis_title_face))
    ret <- ret + ggplot2::theme(strip.text = ggplot2::element_text(color = text_color_palette[["label"]], hjust = 0, size = strip_text_size,
                                               face=strip_text_face, family=strip_text_family))
    ret <- ret + ggplot2::theme(panel.spacing = grid::unit(2, "lines"))
    ret <- ret + ggplot2::theme(plot.title = ggplot2::element_text(color = text_color_palette[["label"]], hjust = 0, size = plot_title_size,
                                               margin = ggplot2::margin(b=plot_title_margin),
                                               family=plot_title_family, face=plot_title_face))
    ret <- ret + ggplot2::theme(plot.subtitle = ggplot2::element_text(color = text_color_palette[["label"]], hjust = 0, size = subtitle_size,
                                                  margin = ggplot2::margin(b=subtitle_margin),
                                                  family=subtitle_family, face=subtitle_face))
    ret <- ret + ggplot2::theme(plot.caption = ggplot2::element_text(color = text_color_palette[["label"]], hjust = 1, size = caption_size,
                                                 margin = ggplot2::margin(t=caption_margin),
                                                 family=caption_family, face=caption_face))
    ret <- ret + ggplot2::theme(plot.margin =plot_margin)

    ret <- ret + ggplot2::theme(legend.text = ggplot2::element_text(color = text_color_palette[["label"]]))
    ret <- ret + ggplot2::theme(legend.title = ggplot2::element_text(color = text_color_palette[["label"]]))

    ret

}

#' @rdname SFPro
#' @md
#' @title SFPro font name R variable aliases
#' @description `font_sf_pro_text` == "`SFProText`"
#' @format length 1 character vector
#' @export
font_sf_pro_text <- "SFProText"

#' @rdname SFPro
#' @md
#' @note `font_sf_pro_text_light` (a.k.a. "`SFProText-Light`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_sf_pro_text_light` == "`SFProText-Light`"
#' @export
font_sf_pro_text_light <- "SFProText-Light"

