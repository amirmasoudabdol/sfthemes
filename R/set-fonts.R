font_inter <- "Inter"
font_inter_light <- "Inter Light"
font_inter_bold <- "Inter Bold"
font_inter_extra_bold <- "Inter Extra Bold"


#' @rdname sf_set_font
#' @title
#' Set Fonts
#'
#' @md
#' @description
#' These functions can be used to change the font of all text elements in any
#' themes. Additionally, all font weights (or faces) of the given theme will be
#' set appropriately to ensure readability, e.g., setting title font
#' to be bold.
#'
#' @param ret A [ggplot2::theme()] object
#'
#' @note
#' - Due to limitation of `extrafont` and the format of SF Pro, `sf_set_sf_pro()`
#' is not yet available, and SF Pro does not work as expected.
#'
#' @examples \dontrun{
#' library(ggplot2)
#'
#' ggplot(mtcars) +
#'  geom_point(aes(x = wt, y = mpg, colour = factor(gear))) +
#'  labs(title = "Fuel economy declines as weight increases",
#'       subtitle = "(1973-74)",
#'       caption = "Data from the 1974 Motor Trend US magazine.",
#'       x = "Weight (1000 lbs)",
#'       y = "Fuel economy (mpg)",
#'       colour = "Gears") +
#'  facet_grid(vs ~ am) +
#'  sf_set_inter(theme_linedraw()) +
#'  scale_colour_ios_light()
#' }
#' @export
sf_set_inter <- function(ret) {

    ret <- ret + theme(plot.title = element_text(family = font_inter_extra_bold))
    ret <- ret + theme(plot.subtitle = element_text(family = font_inter))
    ret <- ret + theme(plot.caption = element_text(family = font_inter_light))

    ret <- ret + theme(axis.title = element_text(family = font_inter))
    ret <- ret + theme(axis.title.x = element_text(family = font_inter))
    ret <- ret + theme(axis.title.y = element_text(family = font_inter))
    ret <- ret + theme(axis.title.y.right = element_text(family = font_inter))

    ret <- ret + theme(axis.text.x = element_text(family = font_inter))
    ret <- ret + theme(axis.text.y = element_text(family = font_inter))

    ret <- ret + theme(strip.text = element_text(family = font_inter))

    ret <- ret + theme(legend.title = element_text(family = font_inter_bold))
    ret <- ret + theme(legend.text = element_text(family = font_inter))

    ret <- ret + theme(plot.tag = element_text(family = font_inter))

    ret
}

font_sf_pro <- "SFPro-Regular"
font_sf_pro_light <- "SFPro-Light"
font_sf_pro_bold <- "SFPro-Bold"
font_sf_pro_extra_bold <- "SFPro-ExtraBold"

font_sf_pro_text <- "SFProText"
font_sf_pro_text_bold <- "SFProText-Bold"

font_sf_pro_disply <- "SFProDisplay"
font_sf_pro_disply_bold <- "SFProDisplay-Bold"

#' @rdname sf_set_font
#'
sf_set_sf_pro <- function(ret) {

    # Overwriting all families

    ret <- ret + theme(plot.title = element_text(family = font_sf_pro_extra_bold))
    ret <- ret + theme(plot.subtitle = element_text(family = font_sf_pro))
    ret <- ret + theme(plot.caption = element_text(family = font_sf_pro_light))

    ret <- ret + theme(axis.title = element_text(family = font_sf_pro))
    ret <- ret + theme(axis.title.x = element_text(family = font_sf_pro))
    ret <- ret + theme(axis.title.y = element_text(family = font_sf_pro))
    ret <- ret + theme(axis.title.y.right = element_text(family = font_sf_pro))

    ret <- ret + theme(axis.text.x = element_text(family = font_sf_pro))
    ret <- ret + theme(axis.text.y = element_text(family = font_sf_pro))

    ret <- ret + theme(strip.text = element_text(family = font_sf_pro))

    ret <- ret + theme(legend.title = element_text(family = font_sf_pro_bold))
    ret <- ret + theme(legend.text = element_text(family = font_sf_pro))

    ret <- ret + theme(plot.tag = element_text(family = font_sf_pro))

    ret
}


#' @rdname sf_set_font
#' @md
#' @description
#'
#' @param font_family_name The name of the font
#'
#' @examples \dontrun{
#' library(ggplot2)
#'
#'ggplot(mtcars) +
#'  geom_point(aes(x = wt, y = mpg, colour = factor(gear))) +
#'  labs(title = "Fuel economy declines as weight increases",
#'       subtitle = "(1973-74)",
#'       caption = "Data from the 1974 Motor Trend US magazine.",
#'       x = "Weight (1000 lbs)",
#'       y = "Fuel economy (mpg)",
#'       colour = "Gears") +
#'  facet_grid(vs ~ am) +
#'  sf_set_inter(theme_linedraw(), "Gill Sans") +
#'  scale_colour_ios_light()
#' }
#' @export
sf_set_custom_font <- function(ret, font_family_name) {

    ret <- ret + theme(plot.title = element_text(family = font_family_name,
                                                 face = "bold"))
    ret <- ret + theme(plot.subtitle = element_text(family = font_family_name,
                                                    face = "plain"))
    ret <- ret + theme(plot.caption = element_text(family = font_family_name,
                                                   face = "plain"))

    ret <- ret + theme(axis.title = element_text(family = font_family_name,
                                                 face = "plain"))
    ret <- ret + theme(axis.title.x = element_text(family = font_family_name,
                                                   face = "plain"))
    ret <- ret + theme(axis.title.y = element_text(family = font_family_name,
                                                   face = "plain"))
    ret <- ret + theme(axis.title.y.right = element_text(family = font_family_name,
                                                         face = "plain"))

    ret <- ret + theme(axis.text.x = element_text(family = font_family_name,
                                                  face = "plain"))
    ret <- ret + theme(axis.text.y = element_text(family = font_family_name,
                                                  face = "plain"))

    ret <- ret + theme(strip.text = element_text(family = font_family_name,
                                                 face = "plain"))

    ret <- ret + theme(legend.title = element_text(family = font_family_name,
                                                   face = "bold"))
    ret <- ret + theme(legend.text = element_text(family = font_family_name,
                                                  face = "plain"))

    ret <- ret + theme(plot.tag = element_text(family = font_family_name,
                                               face = "plain"))

    ret
}
