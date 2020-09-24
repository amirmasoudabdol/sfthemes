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
#' 
#' @param text_color_palette text color palette
#' @param plot_background_col plot background color
#' @param panel_background_col panel backgroun color
#' 
#' @param font_size_scale Scaling fonts
#' @param element_size_scale Scaling element sizes
#' @param offset_x_ticks fancy x tick labels
#' @param offset_x_ticks fancy y tick labels
#' @param scale scale everything
#'
#' @importFrom ggplot2 margin theme theme_minimal element_blank element_rect element_text element_line update_geom_defaults
sf_base <- function(
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
    text_color_palette = ios_text_on_light_cols,
    axis_title_family = base_family,
    axis_title_size = NULL,
    axis_title_face = "plain",
    axis_title_just = "rt",
    plot_background_col = "white",
    panel_background_col = "white",
    plot_margin = margin(30, 30, 30, 30),
    grid_col = "#cccccc", grid = TRUE,
    axis_col = "#cccccc", axis = TRUE, ticks = TRUE,
    font_size_scale = "xSmall",
    element_size_scale = "xSmall",
    offset_x_ticks = FALSE,
    offset_y_ticks = FALSE,
    scale = NULL) {

    if (!is.null(scale)) {
        font_size_scale = scale;
        element_size_scale = scale;
    }

    font_scale <- sf_scale(font_size_scale);

    if (is.null(base_size))
        base_size <- font_scale[['sizes']][['body']]
    else
        warning("The `base_size` variable is set manually.\nSince SFThemes scales font sizes automatically, manual changes to font sizes may cause disproportionate text sizes.")

    if (is.null(plot_title_size))
        plot_title_size <- font_scale[['sizes']][['headline']]
    else
        warning("The `plot_title_size` variable is set manually.\nSince SFThemes scales font sizes automatically, manual changes to font sizes may cause disproportionate text sizes.")

    if (is.null(subtitle_size))
        subtitle_size <- font_scale[['sizes']][['subhead']]
    else
        warning("The `subtitle_size` variable is set manually.\nSince SFThemes scales font sizes automatically, manual changes to font sizes may cause disproportionate text sizes.")

    if (is.null(strip_text_size))
        strip_text_size <- font_scale[['sizes']][['footnote']]
    else
        warning("The `strip_text_size` variable is set manually.\nSince SFThemes scales font sizes automatically, manual changes to font sizes may cause disproportionate text sizes.")

    if (is.null(caption_size))
        caption_size <- font_scale[['sizes']][['caption_1']]
    else
        warning("The `caption_size` variable is set manually.\nSince SFThemes scales font sizes automatically, manual changes to font sizes may cause disproportionate text sizes.")

    if (is.null(axis_text_size))
        axis_text_size <- font_scale[['sizes']][['caption_1']]
    else
        warning("The `axis_text_size` variable is set manually.\nSince SFThemes scales font sizes automatically, manual changes to font sizes may cause disproportionate text sizes.")

    if (is.null(axis_title_size))
        axis_title_size <- font_scale[['sizes']][['caption_1']]
    else
        warning("The `axis_title_size` variable is set manually.\nSince SFThemes scales font sizes automatically, manual changes to font sizes may cause disproportionate text sizes.")


    if (!is.null(element_size_scale)){
        update_geom_defaults("point", list(size = sf_element_sizes[[element_size_scale]]))
        update_geom_defaults("line", list(lwd = sf_element_sizes[[element_size_scale]]))
    }


    ret <- theme_minimal(base_family = base_family, base_size = base_size)

    ret <- ret + theme(legend.background = element_blank())
    ret <- ret + theme(legend.key = element_blank())

    ret <- ret + theme(plot.background = element_rect(fill = plot_background_col, color = plot_background_col))
    # ret <- ret + theme(panel.background = element_rect(fill = panel_background_col, color = text_color_palette[["label"]]))
    # ret <- ret + theme(panel.grid = )

    # Grids
    if (inherits(grid, "character") | grid == TRUE) {

        ret <- ret + theme(panel.grid = element_line(color = text_color_palette[["secondaryLabel"]], size = 0.2))

        ret <- ret + theme(panel.grid.major.x = element_line(color = text_color_palette[["secondaryLabel"]], linetype = "dotted", size = 0.3))
        ret <- ret + theme(panel.grid.minor.x = element_line(color = text_color_palette[["tertiaryLabel"]], linetype = "dotted", size = 0.3))

        ret <- ret + theme(panel.grid.major.y = element_line(color = text_color_palette[["secondaryLabel"]], linetype = "solid", size = 0.175))
        ret <- ret + theme(panel.grid.minor.y = element_line(color = text_color_palette[["tertiaryLabel"]], linetype = "solid", size = 0.1))

        if (inherits(grid, "character")) {
            if (regexpr("X", grid)[1] < 0) ret <- ret + theme(panel.grid.major.x = element_blank())
            if (regexpr("Y", grid)[1] < 0) ret <- ret + theme(panel.grid.major.y = element_blank())
            if (regexpr("x", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.x = element_blank())
            if (regexpr("y", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.y = element_blank())
        }

    } else {
        ret <- ret + theme(panel.grid = element_blank())
    }

    # Axes
    if (inherits(axis, "character") | axis == TRUE) {
        ret <- ret + theme(axis.line = element_line(color = text_color_palette[["label"]], size = 0.2))
        if (inherits(axis, "character")) {
            axis <- tolower(axis)
            if (regexpr("x", axis)[1] < 0) {
                ret <- ret + theme(axis.line.x = element_blank())
            } else {
                ret <- ret + theme(axis.line.x = element_line(color = text_color_palette[["label"]], size = 0.2))
            }
            if (regexpr("y", axis)[1] < 0) {
                ret <- ret + theme(axis.line.y = element_blank())
            } else {
                ret <- ret + theme(axis.line.y = element_line(color = text_color_palette[["label"]], size = 0.2))
            }
        } else {
            ret <- ret + theme(axis.line.x = element_line(color = text_color_palette[["label"]], size = 0.2))
            ret <- ret + theme(axis.line.y = element_line(color = text_color_palette[["label"]], size = 0.2))
        }
    } else {
        ret <- ret + theme(axis.line = element_blank())
    }

    # Ticks
    if (!ticks) {
        ret <- ret + theme(axis.ticks = element_blank())
        ret <- ret + theme(axis.ticks.x = element_blank())
        ret <- ret + theme(axis.ticks.y = element_blank())
    } else {
        # ret <- ret + theme(axis.ticks = element_line(linetype = "dotted", color = text_color_palette[["secondaryLabel"]], size = 0.3))

        # X
        ret <- ret + theme(axis.ticks.x = element_line(linetype = "dotted", color = text_color_palette[["secondaryLabel"]], size = 0.3))
        ret <- ret + theme(axis.ticks.length.x = grid::unit(2.5, "pt"))
        if (offset_x_ticks)
            ret <- ret + theme(axis.ticks.length.x = grid::unit(20, "pt"))

        # Y
        ret <- ret + theme(axis.ticks.y = element_line(linetype = "solid", color = text_color_palette[["secondaryLabel"]], size = 0.175))
        ret <- ret + theme(axis.ticks.length.y = grid::unit(2.5, "pt"))
        if (offset_y_ticks)
            ret <- ret + theme(axis.ticks.length.y = grid::unit(20, "pt"))
    }

    xj <- switch(tolower(substr(axis_title_just, 1, 1)), b=0, l=0, m=0.5, c=0.5, r=1, t=1)
    yj <- switch(tolower(substr(axis_title_just, 2, 2)), b=0, l=0, m=0.5, c=0.5, r=1, t=1)

    x_axis_ticks_text_offset = 0;
    x_ticks_margin = margin(t = 5)
    if (offset_x_ticks){
        x_axis_ticks_text_offset = -0.3;
        x_ticks_margin = margin(b = -5)
    }

    y_axis_ticks_text_offset = 0;
    y_ticks_margin = margin(r = 5)
    if (offset_y_ticks) {
        y_axis_ticks_text_offset = -0.3;
        y_ticks_margin = margin(r = -5)
    }

    ret <- ret + theme(axis.text.x = element_text(color = text_color_palette[["label"]],
                                                    size = axis_text_size,
                                                    margin = x_ticks_margin,
                                                    hjust = x_axis_ticks_text_offset))

    ret <- ret + theme(axis.text.y = element_text(color = text_color_palette[["label"]],
                                                    size = axis_text_size,
                                                    margin = y_ticks_margin,
                                                    vjust = y_axis_ticks_text_offset))

    ret <- ret + theme(axis.title = element_text(color = text_color_palette[["label"]],
                                                    size = axis_title_size,
                                                    family=axis_title_family))

    ret <- ret + theme(axis.title.x = element_text(color = text_color_palette[["label"]],
                                                    hjust = xj,
                                                    size = axis_title_size,
                                                    family=axis_title_family, face=axis_title_face))

    ret <- ret + theme(axis.title.y = element_text(color = text_color_palette[["label"]], 
                                                    hjust = yj,
                                                    size = axis_title_size,
                                                    family=axis_title_family, face=axis_title_face))

    ret <- ret + theme(axis.title.y.right = element_text(color = text_color_palette[["label"]],
                                                    size = axis_title_size,
                                                    hjust = yj,
                                                    angle=90,
                                                    family=axis_title_family, face=axis_title_face))
    
    ret <- ret + theme(strip.text = element_text(color = text_color_palette[["label"]], 
                                                    hjust = 0,
                                                    size = strip_text_size,
                                                    face=strip_text_face, family=strip_text_family))

    ret <- ret + theme(panel.spacing = grid::unit(2, "lines"))

    ret <- ret + theme(plot.title = element_text(color = text_color_palette[["label"]],
                                                    hjust = 0,
                                                    size = plot_title_size,
                                                    margin = margin(b=plot_title_margin),
                                                    family=plot_title_family, face=plot_title_face))

    ret <- ret + theme(plot.subtitle = element_text(color = text_color_palette[["label"]],
                                                    hjust = 0,
                                                    size = subtitle_size,
                                                    margin = margin(b=subtitle_margin),
                                                    family=subtitle_family, face=subtitle_face))
    
    ret <- ret + theme(plot.caption = element_text(color = text_color_palette[["label"]],
                                                    hjust = 1,
                                                    size = caption_size,
                                                    margin = margin(t=caption_margin),
                                                    family=caption_family, face=caption_face))
    
    ret <- ret + theme(plot.margin =plot_margin)
    ret <- ret + theme(legend.title = element_text(color = text_color_palette[["label"]],
                                                    size = axis_text_size, face="bold"))
    ret <- ret + theme(legend.text = element_text(color = text_color_palette[["label"]],
                                                    size = axis_text_size))

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

