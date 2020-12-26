#'
#' @md
#' @param font_family Primary font family of the plot
#' @param subtitle_margin Plot subtitle margin bottom (single numeric value)
#' @param axis_title_just Axis title font justificationk one of `[blmcrt]`
#' @param plot_margin Plot margin (specify with [ggplot2::margin])
#' @param grid_col Grid color
#' @param grid Panel grid (`TRUE`, `FALSE`, or a
#' combination of `X`, `x`, `Y`, `y`)
#' @param axis_col Axis color
#' @param axis Add x or y axes? `TRUE`, `FALSE`, "`xy`"
#' @param ticks Ticks if `TRUE` add ticks
#'
#' @param text_colour_palette Text color palette
#' @param plot_background_col Plot background color
#' @param panel_background_col Panel backgroun color
#'
#' @param size_class Resizes texts and elements based on one of the given [size classes](../articles/size_classes.html):
#'   * A `character` from {"xSmall", "Small", "Medium", "Large", "xLarge", "xxLarge", "xxxLarge"}
#' @param font_size_class Only resizes text based on one of the above size classes
#' @param element_size_class Only resizes elements based on one of the above size classes
#' @param offset_x_ticks Fancy x tick labels
#' @param offset_y_ticks Fancy y tick labels
#'
#' @importFrom ggplot2 margin theme theme_minimal element_blank element_rect element_text element_line update_geom_defaults
sf_base <- function(
  font_family = NULL,
  plot_title_face = NULL, 
  plot_title_margin = 10,
  subtitle_face = "plain", 
  subtitle_margin = 25,
  strip_text_face = "plain",
  caption_face = "plain", 
  caption_margin = 25,
  text_colour_palette = NULL,
  axis_title_face = "plain",
  axis_title_just = "rt",
  legend_title_face = "bold",
  plot_background_col = NULL,
  panel_background_col = NULL,
  plot_margin = margin(30, 30, 30, 30),
  grid_col = NULL, 
  grid = TRUE,
  axis_col = NULL,
  axis = TRUE,
  ticks = TRUE,
  size_class =  NULL,
  font_size_class = "xSmall",
  element_size_class = "xSmall",
  offset_x_ticks = FALSE,
  offset_y_ticks = FALSE
  ) {

  if (!is.null(size_class)) {
    font_size_class <- size_class
    element_size_class <- size_class
  }



  font_scale <- sf_scale(font_size_class)

  if (!is.null(element_size_class)) {
    update_geom_defaults("point",
               list(size = sf_element_sizes[[element_size_class]]))
    update_geom_defaults("line",
               list(lwd = sf_element_sizes[[element_size_class]]))
  }


  ret <- theme_minimal()

  # Patch the correct text sizes
  ret <- sf_set_text_sizes(ret, size_class = font_size_class)

  # Patch the fonts faces and families
  if (font_family == "Inter") {
    ret <- sf_set_inter(ret)
  } else if (font_family == "SF Pro") {
    ret <- sf_set_sf_pro(ret)
  } else {
    ret <- sf_set_custom_font(ret, font_family)
  }

  ret <- ret + theme(legend.background = element_blank())
  ret <- ret + theme(legend.key = element_blank())

  ret <- ret + theme(plot.background =
               element_rect(fill = plot_background_col,
                    color = plot_background_col))
  # ret <- ret + theme(panel.background = element_rect(fill = panel_background_col, color = panel_background_col))
  # ret <- ret + theme(panel.border = element_rect(fill = NA, color = panel_background_col))
  # ret <- ret + theme(panel.grid = )

  # Grids
  if (inherits(grid, "character") | grid == TRUE) {

    ret <- ret + theme(panel.grid =
           element_line(color = text_colour_palette[["secondaryLabel"]],
                size = 0.2))

    ret <- ret + theme(panel.grid.major.x =
          element_line(color = text_colour_palette[["secondaryLabel"]],
                 linetype = "dotted", size = 0.3))

    ret <- ret + theme(panel.grid.minor.x =
          element_line(color = text_colour_palette[["tertiaryLabel"]],
                 linetype = "dotted", size = 0.3))

    ret <- ret + theme(panel.grid.major.y =
          element_line(color = text_colour_palette[["secondaryLabel"]],
                 linetype = "solid", size = 0.175))

    ret <- ret + theme(panel.grid.minor.y =
          element_line(color = text_colour_palette[["tertiaryLabel"]],
                 linetype = "solid", size = 0.1))

    if (inherits(grid, "character")) {
      if (regexpr("X", grid)[1] < 0)
        ret <- ret + theme(panel.grid.major.x = element_blank())
      if (regexpr("Y", grid)[1] < 0)
        ret <- ret + theme(panel.grid.major.y = element_blank())
      if (regexpr("x", grid)[1] < 0)
        ret <- ret + theme(panel.grid.minor.x = element_blank())
      if (regexpr("y", grid)[1] < 0)
        ret <- ret + theme(panel.grid.minor.y = element_blank())
    }

  } else {
    ret <- ret + theme(panel.grid = element_blank())
  }

  # Axes
  if (inherits(axis, "character") | axis == TRUE) {
    ret <- ret + theme(axis.line =
               element_line(color = text_colour_palette[["label"]],
                    size = 0.2))

    if (inherits(axis, "character")) {
      axis <- tolower(axis)
      if (regexpr("x", axis)[1] < 0) {
        ret <- ret + theme(axis.line.x = element_blank())
      } else {
        ret <- ret + theme(axis.line.x =
               element_line(color = text_colour_palette[["label"]],
                    size = 0.2))
      }
      if (regexpr("y", axis)[1] < 0) {
        ret <- ret + theme(axis.line.y = element_blank())
      } else {
        ret <- ret + theme(axis.line.y =
               element_line(color = text_colour_palette[["label"]],
                    size = 0.2))
      }
    } else {
      ret <- ret + theme(axis.line.x =
               element_line(color = text_colour_palette[["label"]],
                    size = 0.2))
      ret <- ret + theme(axis.line.y =
               element_line(color = text_colour_palette[["label"]],
                    size = 0.2))
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
    # ret <- ret + theme(axis.ticks = element_line(linetype = "dotted", color = text_colour_palette[["secondaryLabel"]], size = 0.3))

    # X
    ret <- ret + theme(axis.ticks.x =
           element_line(linetype = "dotted",
                color = text_colour_palette[["secondaryLabel"]],
                size = 0.3))

    ret <- ret + theme(axis.ticks.length.x = grid::unit(2.5, "pt"))
    if (offset_x_ticks)
      ret <- ret + theme(axis.ticks.length.x = grid::unit(20, "pt"))

    # Y
    ret <- ret + theme(axis.ticks.y =
           element_line(linetype = "solid",
                color = text_colour_palette[["secondaryLabel"]],
                size = 0.175))

    ret <- ret + theme(axis.ticks.length.y = grid::unit(2.5, "pt"))
    if (offset_y_ticks)
      ret <- ret + theme(axis.ticks.length.y = grid::unit(20, "pt"))
  }

  xj <- switch(tolower(substr(axis_title_just, 1, 1)),
         b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1)
  yj <- switch(tolower(substr(axis_title_just, 2, 2)),
         b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1)

  x_axis_ticks_text_offset <- 0
  x_ticks_margin <- margin(t = 5)
  if (offset_x_ticks){
    x_axis_ticks_text_offset <- -0.3
    x_ticks_margin <- margin(b = -5)
  }

  y_axis_ticks_text_offset <- 0
  y_ticks_margin <- margin(r = 5)
  if (offset_y_ticks) {
    y_axis_ticks_text_offset <- -0.3
    y_ticks_margin <- margin(r = -5)
  }

  ret <- ret + theme(plot.margin = plot_margin)
  ret <- ret + theme(panel.spacing = grid::unit(2, "lines"))

  ret <- ret + theme(axis.text.x =
            element_text(color = text_colour_palette[["label"]],
                  margin = x_ticks_margin,
                  hjust = x_axis_ticks_text_offset))

  ret <- ret + theme(axis.text.y =
            element_text(color = text_colour_palette[["label"]],
                   margin = y_ticks_margin,
                   vjust = y_axis_ticks_text_offset))

  ret <- ret + theme(axis.title =
            element_text(color = text_colour_palette[["label"]]))

  ret <- ret + theme(axis.title.x =
            element_text(color = text_colour_palette[["label"]],
                   hjust = xj))

  ret <- ret + theme(axis.title.y =
            element_text(color = text_colour_palette[["label"]],
                   hjust = yj))

  ret <- ret + theme(axis.title.y.right =
            element_text(color = text_colour_palette[["label"]],
                   hjust = yj,
                   angle = 90))

  ret <- ret + theme(strip.text =
            element_text(color = text_colour_palette[["label"]],
                   hjust = 0))

  ret <- ret + theme(plot.title =
            element_text(color = text_colour_palette[["label"]],
                   hjust = 0,
                   margin = margin(b = plot_title_margin)))

  ret <- ret + theme(plot.subtitle =
            element_text(color = text_colour_palette[["label"]],
                   hjust = 0,
                   margin = margin(b = subtitle_margin)))

  ret <- ret + theme(plot.caption =
            element_text(color = text_colour_palette[["label"]],
                   hjust = 0,
                   margin = margin(t = caption_margin)))

  ret <- ret + theme(legend.title =
            element_text(color = text_colour_palette[["label"]]))

  ret <- ret + theme(legend.text =
            element_text(color = text_colour_palette[["label"]]))

  ret

}
