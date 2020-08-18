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

ios_light_cols <- list(azure = "#007aff",
                       ufo.green = "#34c759",
                       iris = "#5856d6",
                       safety.orange = "#ff9500",
                       radical.red = "#ff2d55",
                       medium.orchid = "#af52de",
                       red.orange = "#ff3b30",
                       maya.blue = "#5ac8fa",
                       tangerine = "#ffcc00")

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

#' @export
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

#' A color palette based on iOS Light Color Palette
#'
#' @export
#' @examples \dontrun{
#' library(scales)
#' scales::show_col(ios_light_pal()(9))
#' }
ios_light_pal <- function(accessible = FALSE) {
    if (accessible) {
        scales::manual_pal(ios_accessible_light_palette)
    }else{
        scales::manual_pal(ios_light_palette)
    }
}

#' Discrete color & fill scales based on the iOS Light Color Palette
#'
#' See [ios_light_palette()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_ios
#' @aliases scale_color_ios_light
#' @export
scale_colour_ios_light <- function(accessible = FALSE, ...) {
    if (accessible){
        ggplot2::discrete_scale("colour", "ios_light", ios_light_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("colour", "ios_accessible_light", ios_light_pal(accessible = FALSE), ...)
    }
}

#' @export
#' @rdname scale_ios_light
scale_color_ios_light <- scale_colour_ios_light

#' @export
#' @rdname scale_ios_light
scale_fill_ios_light <- function(accessible = FALSE, ...) {
    if (accessible){
        ggplot2::discrete_scale("fill", "ios_light", ios_light_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("fill", "ios_accessible_light", ios_light_pal(accessible = FALSE), ...)
    }
}


# Dark Colors

#' A color palette based on iOS Light Color Palette
#'
#' @export
#' @examples \dontrun{
#' library(scales)
#' scales::show_col(ios_dark_pal()(9))
#' }
ios_dark_pal <- function(accessible = FALSE) {
    if (accessible) {
        scales::manual_pal(ios_accessible_dark_palette)
    }else{
        scales::manual_pal(ios_dark_palette)
    }
}

#' Discrete color & fill scales based on the iOS dark Palette
#'
#' See [ios_dark_palette()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_ios
#' @export
scale_colour_ios_dark <- function(accessible = FALSE, ...) {
    if (accessible){
        ggplot2::discrete_scale("colour", "ios_dark", ios_dark_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("colour", "ios_accessible_dark", ios_dark_pal(accessible = FALSE), ...)
    }
}

#' @export
#' @rdname scale_ios_dark
scale_color_ios_dark <- scale_colour_ios_dark

#' @export
#' @rdname scale_ios_dark
scale_fill_ios_dark <- function(accessible = FALSE, ...) {
    if (accessible){
        ggplot2::discrete_scale("fill", "ios_dark", ios_dark_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("fill", "ios_accessible_dark", ios_dark_pal(accessible = FALSE), ...)
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
ios_accessible_gray_light_palette <- unname(unlist(ios_accessible_gray_light_cols))

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
ios_accessible_gray_dark_palette <- unname(unlist(ios_accessible_gray_dark_cols))

#' A color palette based on iOS Light Color Palette
#'
#' @export
#' @examples \dontrun{
#' library(scales)
#' scales::show_col(ios_light_pal()(9))
#' }
ios_gray_light_pal <- function(accessible = FALSE) {
    if (accessible) {
        scales::manual_pal(ios_accessible_gray_light_palette)
    }else{
        scales::manual_pal(ios_gray_light_palette)
    }
}

#' Discrete color & fill scales based on the iOS Light Color Palette
#'
#' See [ios_gray_light_palette()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_ios
#' @export
scale_colour_ios_gray_light <- function(accessible = FALSE, ...) {
    if (accessible){
        ggplot2::discrete_scale("colour", "ios_gray_light", ios_gray_light_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("colour", "ios_accessible_gray_light", ios_gray_light_pal(accessible = FALSE), ...)
    }
}

#' @export
#' @rdname scale_ios_gray_light
scale_color_ios_gray_light <- scale_colour_ios_gray_light

#' @export
#' @rdname scale_ios_gray_light
scale_fill_ios_gray_light <- function(accessible = FALSE, ...) {
    if (accessible){
        ggplot2::discrete_scale("fill", "ios_gray_light", ios_gray_light_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("fill", "ios_accessible_gray_light", ios_gray_light_pal(accessible = FALSE), ...)
    }
}


# Dark Colors

#' A color palette based on iOS Light Color Palette
#'
#' @export
#' @examples \dontrun{
#' library(scales)
#' scales::show_col(ios_dark_pal()(9))
#' }
ios_gray_dark_pal <- function(accessible = FALSE) {
    if (accessible) {
        scales::manual_pal(ios_accessible_gray_dark_palette)
    }else{
        scales::manual_pal(ios_gray_dark_palette)
    }
}

#' Discrete color & fill scales based on the iOS dark Palette
#'
#' See [ios_gray_dark_palette()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_ios
#' @export
scale_colour_ios_gray_dark <- function(accessible = FALSE, ...) {
    if (accessible){
        ggplot2::discrete_scale("colour", "ios_gray_dark", ios_gray_dark_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("colour", "ios_accessible_gray_dark", ios_gray_dark_pal(accessible = FALSE), ...)
    }
}

#' @export
#' @rdname scale_ios_gray_dark
scale_color_ios_gray_dark <- scale_colour_ios_gray_dark

#' @export
#' @rdname scale_ios_gray_dark
scale_fill_ios_gray_dark <- function(accessible = FALSE, ...) {
    if (accessible){
        ggplot2::discrete_scale("fill", "ios_gray_dark", ios_gray_dark_pal(accessible = TRUE), ...)
    }else{
        ggplot2::discrete_scale("fill", "ios_accessible_gray_dark", ios_gray_dark_pal(accessible = FALSE), ...)
    }
}

