ios_background_cols <- list(white = "#ffffff",
                            dark_jungle_green = "#1c1c1e",
                            black = "#000000")

ios_background_palette <- unname(unlist(ios_background_cols))

ios_text_on_light_cols <- list(label = "#000000", # black
                               secondaryLabel = "#8a8a8e", # oslo.gray
                               tertiaryLabel = "#c4c4c6", # ghost
                               quaternaryLabel = "#dcdcdd" # gainsboro
                               )

ios_text_on_light_palette <- unname(unlist(ios_text_on_light_cols))

ios_text_on_dark_cols <- list(label = "#ffffff", # white
                              secondaryLabel = "#8d8d93", # oslo.gray
                              tertiaryLabel = "#47474a", # steel.gray
                              quaternaryLabel = "#2a2a2c" # jaguar
                              )

ios_text_on_dark_palette <- unname(unlist(ios_text_on_dark_cols))

ios_light_cols <- list(azure = "#007aff",           # 1
                       ufo.green = "#34c759",       # 2
                       iris = "#5856d6",            # 3
                       safety.orange = "#ff9500",   # 4
                       radical.red = "#ff2d55",     # 5
                       medium.orchid = "#af52de",   # 6
                       red.orange = "#ff3b30",      # 7
                       maya.blue = "#5ac8fa",       # 8
                       tangerine = "#ffcc00")       # 9

ios_cols_order <- list(default = 1:9,
                       contrast = c(1, 2, 5, 6, 4, 8, 3, 7, 9 ))

ios_light_palette <- unname(unlist(ios_light_cols))

ios_accessible_light_cols <- list(palatinate.blue = "#0040dd",
                                  salem = "#248a3d",
                                  governor.bay = "#3634a3",
                                  mahogany = "#c93400",
                                  crimson = "#d30f45",
                                  vivid.violet = "#8944ab",
                                  harvard.crimson = "#d70015",
                                  allports = "#0071a4",
                                  chelsea.gem = "#a05a00")

ios_accessible_light_palette <- unname(unlist(ios_accessible_light_cols))

ios_dark_cols <- list(cool.blue = "#0a84ff",
                      ufo.green = "#30d158",
                      majorelle.blue = "#5e5ce6",
                      california = "#ff9f0a",
                      radical.red = "#ff375f",
                      medium.orchid = "#bf5af2",
                      coral.red = "#ff453a",
                      maya.blue = "#64d2ff",
                      gold = "#ffd60a")

ios_dark_palette <- unname(unlist(ios_dark_cols))

ios_accessible_dark_cols <- list(picton.blue = "#409cff",
                                 ufo.green = "#30db5b",
                                 faded.blue = "#7d7aff",
                                 yellow.orange = "#ffb340",
                                 brink.pink = "#ff6482",
                                 heliotrope = "#da8fff",
                                 pastel.red = "#ff6961",
                                 maya.blue = "#70d7ff",
                                 turbo = "#ffd426")

ios_accessible_dark_palette <- unname(unlist(ios_accessible_dark_cols))

#' @title
#' iOS Color Palettes
#'
#' @md
#' @description
#' Set of color palettes based on
#' [iOS System Colors](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/).
#' General information about each palette can be found in the
#' [colors](../articles/colors.html) vignette.
#'
#' @details
#' These functions are ideal for accessing the raw color values, and can be
#' used within functions where raw color values are needed, e.g., [plot].
#' In order to use them with `ggplot` functions, you must utilize one of
#' the followings:
#'
#' - [scale_colour_ios_light]
#' - [scale_colour_ios_dark]
#' - [scale_colour_ios_gray_light]
#' - [scale_colour_ios_gray_dark]
#'
#' @param accessible Indicates whether the accessible set of colors should be used
#' @param order Indicates the order of colors in the palette
#' @rdname ios_colour_palettes
#'
#' @examples
#' library(scales)
#' scales::show_col(
#'     ios_light_pal(order = "default", accessible = FALSE)(9),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     ios_light_pal(order = "default", accessible = TRUE)(9),
#'     borders = NA, labels = FALSE)
#'
#' scales::show_col(
#'     ios_light_pal(order = "contrast", accessible = FALSE)(9),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     ios_light_pal(order = "contrast", accessible = TRUE)(9),
#'     borders = NA, labels = FALSE)
#'
#' @export
ios_light_pal <- function(order = "contrast", accessible = FALSE) {
    if (accessible) {
        scales::manual_pal(ios_accessible_light_palette[ios_cols_order[[order]]])
    }else{
        scales::manual_pal(ios_light_palette[ios_cols_order[[order]]])
    }
}

#' iOS Light Color Scales
#' @md
#' @description
#'
#' These scales meant to be used with light themes, e.g, `theme_sf_light()`.
#' While they can be used with dark themes, in general, we recommend pairing 
#' `scale_colour_*_light`s with light themes for better clarity and contrast.
#' 
#' → **Note**: *While iOS color palettes provide a total of 9 colors, we do not
#' recommend using them for more than 6 groups. The last three colors often
#' collide with other colors in the palette and may affect the clarity of your
#' visualization.*
#'
#' @param accessible Indicates whether the accessible set of colors should be
#' used
#' @param order Indicates the order of colors in the palette
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_colour_ios_light
#' @family colour scales
#' @export
scale_colour_ios_light <- function(order = "contrast", accessible = FALSE, ...) {
    if (accessible) {
        ggplot2::discrete_scale("colour", "ios_light", ios_light_pal(order = order, accessible = accessible), ...)
    }else{
        ggplot2::discrete_scale("colour", "ios_accessible_light", ios_light_pal(order = order, accessible = accessible), ...)
    }
}

#' @param accessible Indicates whether the accessible set of colors should be
#' used
#' @param order Indicates the order of colors in the palette
#' @rdname scale_colour_ios_light
#' @export
scale_fill_ios_light <- function(order = "contrast", accessible = FALSE, ...) {
    if (accessible) {
        ggplot2::discrete_scale("fill", "ios_light", ios_light_pal(order = order, accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("fill", "ios_accessible_light", ios_light_pal(order = order, accessible = FALSE), ...)
    }
}



#' @param accessible Indicates whether the accessible set of colors should be
#' used
#' @param order Indicates the order of colors in the palette
#' @rdname ios_colour_palettes
#'
#' @examples
#' library(scales)
#' scales::show_col(
#'     ios_dark_pal(order = "default", accessible = FALSE)(9),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     ios_dark_pal(order = "default", accessible = TRUE)(9),
#'     borders = NA, labels = FALSE)
#'
#' scales::show_col(
#'     ios_dark_pal(order = "contrast", accessible = FALSE)(9),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     ios_dark_pal(order = "contrast", accessible = TRUE)(9),
#'     borders = NA, labels = FALSE)
#'
#' @export
ios_dark_pal <- function(order = "contrast", accessible = FALSE) {
    if (accessible) {
        scales::manual_pal(ios_accessible_dark_palette[ios_cols_order[[order]]])
    }else{
        scales::manual_pal(ios_dark_palette[ios_cols_order[[order]]])
    }
}

#' iOS Dark Color Scales
#'
#' @md
#' @description
#' These scales meant to be used with dark themes, e.g, `theme_sf_dark()`.
#' While they can be used with light themes, in general, we recommend pairing 
#' `scale_colour_*_dark`s with dark themes for better clarity and contrast.
#' 
#' → **Note**: *While iOS color palettes provide a total of 9 colors, we do not
#' recommend using them for more than 6 groups. The last three colors often
#' collide with other colors in the palette and may affect the clarity of your
#' visualization.*
#'
#' @param accessible Indicates whether the accessible set of colors should be
#' used
#' @param order Indicates the order of colors in the palette
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_colour_ios_dark
#' @family colour scales
#' @export
scale_colour_ios_dark <- function(order = "contrast", accessible = FALSE, ...) {
    if (accessible) {
        ggplot2::discrete_scale("colour", "ios_dark", ios_dark_pal(order = order, accessible = accessible), ...)
    }else{
        ggplot2::discrete_scale("colour", "ios_accessible_dark", ios_dark_pal(order = order, accessible = accessible), ...)
    }
}

#' @param accessible Indicates whether the accessible set of colors should be
#' used
#' @param order Indicates the order of colors in the palette
#' @rdname scale_colour_ios_dark
#' @export
scale_fill_ios_dark <- function(order = "contrast", accessible = FALSE, ...) {
    if (accessible) {
        ggplot2::discrete_scale("fill", "ios_dark",
                                ios_dark_pal(order = order,
                                             accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("fill", "ios_accessible_dark",
                                ios_dark_pal(order = order,
                                             accessible = FALSE), ...)
    }
}



# Grays

ios_gray_light_cols <- list(oslo.gray= "#8e8e93",
                            bombay= "#aeaeb2",
                            lavender.gray= "#c7c7cc",
                            light.gray= "#d1d1d6",
                            white.lilac= "#e5e5ea",
                            anti.flash.white= "#f2f2f7"
)
ios_gray_light_palette <- unname(unlist(ios_gray_light_cols))


ios_accessible_gray_light_cols <- list(scarpa.flow= "#6c6c70",
                                       oslo.gray= "#8e8e93",
                                       bombay= "#aeaeb2",
                                       french.gray= "#bcbcc0",
                                       alto= "#d8d8dc",
                                       solitude= "#ebebf0")
ios_accessible_gray_light_palette <-
    unname(unlist(ios_accessible_gray_light_cols))

ios_gray_dark_cols <- list(oslo.gray= "#8e8e93",
                           storm.dust= "#636366",
                           charcoal= "#48484a",
                           montana= "#3a3a3c",
                           bunker= "#2c2c2e",
                           dark.jungle.green= "#1c1c1e")
ios_gray_dark_palette <- unname(unlist(ios_gray_dark_cols))


ios_accessible_gray_dark_cols <- list(bombay= "#aeaeb2",
                                      jumbo= "#7c7c80",
                                      dark.gray= "#545456",
                                      charcoal= "#444446",
                                      shark= "#363638",
                                      nero= "#242426"
)
ios_accessible_gray_dark_palette <-
    unname(unlist(ios_accessible_gray_dark_cols))

#' @param accessible Indicates whether the accessible set of colors should be
#' used
#'
#' @rdname ios_colour_palettes
#'
#' @examples
#' library(scales)
#' scales::show_col(
#'     ios_gray_light_pal(accessible = FALSE)(6),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     ios_gray_light_pal(accessible = TRUE)(6),
#'     borders = NA, labels = FALSE)
#'
#' @export
ios_gray_light_pal <- function(accessible = FALSE) {
    if (accessible) {
        scales::manual_pal(ios_accessible_gray_light_palette)
    }else{
        scales::manual_pal(ios_gray_light_palette)
    }
}

#' iOS Gray Light Color Scales
#'
#' @md
#' @description
#' These scales are based on light gray palette of iOS system colors. They have
#' only been implemented in sfthemes because I wanted to bring all the color 
#' palettes mentioned in the Apple's HIG.
#' 
#' **Warning**: *iOS gray colors are not necessary suitable for general 
#' plotting; so consider your use-case carefully before adapting them. You can
#' loosely compare them to `ggplot2::scale_alpha()`.*
#'
#' @param accessible Indicates whether the accessible set of colors should be
#' used
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_colour_ios_gray_light
#' @family colour scales
#' @export
scale_colour_ios_gray_light <- function(accessible = FALSE, ...) {
    if (accessible) {
        ggplot2::discrete_scale("colour", "ios_gray_light",
                                ios_gray_light_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("colour", "ios_accessible_gray_light",
                                ios_gray_light_pal(accessible = FALSE), ...)
    }
}

#'
#' @param accessible Indicates whether the accessible set of colors should be
#' used
#'
#' @rdname scale_colour_ios_gray_light
#'
#' @export
scale_fill_ios_gray_light <- function(accessible = FALSE, ...) {
    if (accessible) {
        ggplot2::discrete_scale("fill", "ios_gray_light",
                                ios_gray_light_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("fill", "ios_accessible_gray_light",
                                ios_gray_light_pal(accessible = FALSE), ...)
    }
}


#' @param accessible Indicates whether the accessible set of colors should be
#' used
#'
#' @rdname ios_colour_palettes
#'
#' @examples
#' library(scales)
#' scales::show_col(
#'     ios_gray_dark_pal(accessible = FALSE)(6),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     ios_gray_dark_pal(accessible = TRUE)(6),
#'     borders = NA, labels = FALSE)
#'
#' @export
ios_gray_dark_pal <- function(accessible = FALSE) {
    if (accessible) {
        scales::manual_pal(ios_accessible_gray_dark_palette)
    }else{
        scales::manual_pal(ios_gray_dark_palette)
    }
}

#' iOS Gray Dark Color Palette
#' 
#' @md
#' @description
#' These scales are based on dark gray palette of iOS system colors. They have
#' only been implemented in sfthemes because I wanted to bring all the color 
#' palettes mentioned in the Apple's HIG.
#' 
#' **Warning**: *iOS gray colors are not necessary suitable for general 
#' plotting; so consider your use-case carefully before adapting them. You can
#' loosely compare them to `ggplot2::scale_alpha()`.*
#'
#' @param accessible Indicates whether the accessible set of colors should be
#'  used
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_colour_ios_gray_dark
#' @family colour scales
#' @export
scale_colour_ios_gray_dark <- function(accessible = FALSE, ...) {
    if (accessible) {
        ggplot2::discrete_scale("colour", "ios_gray_dark",
                                ios_gray_dark_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("colour", "ios_accessible_gray_dark",
                                ios_gray_dark_pal(accessible = FALSE), ...)
    }
}

#' @param accessible Indicates whether the accessible set of colors should be
#' used
#' @rdname scale_colour_ios_gray_dark
#'
#' @export
scale_fill_ios_gray_dark <- function(accessible = FALSE, ...) {
    if (accessible) {
        ggplot2::discrete_scale("fill", "ios_gray_dark",
                                ios_gray_dark_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("fill", "ios_accessible_gray_dark",
                                ios_gray_dark_pal(accessible = FALSE), ...)
    }
}

