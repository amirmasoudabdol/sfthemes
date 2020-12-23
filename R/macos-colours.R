macos_background_cols <- list(nero = "#262626",
                              white = "#ededed")
macos_background_palette <- unname(unlist(macos_background_cols))

macos_text_on_light_cols <- ios_text_on_light_cols
macos_text_on_light_palette <- ios_text_on_light_palette
macos_text_on_dark_cols <- ios_text_on_dark_cols
macos_text_on_dark_palette <- ios_text_on_dark_palette

macos_accessible_dark_cols <- list(
    picton.blue = "#409cff",
    teak = "#b59469",
    aluminum = "#98989d",
    lime.green = "#28cd41",
    faded.blue = "#7d7aff",
    safety.orange = "#ff9500",
    brink.pink = "#ff6482",
    heliotrope = "#da8fff",
    pastel.red = "#ff6961",
    maya.blue = "#70d7ff",
    tangerine = "#ffcc00")
macos_accessible_dark_palette <- unname(unlist(macos_accessible_dark_cols))

macos_accessible_light_cols <- list(
    palatinate.blue = "#0040dd",
    dark.wood = "#7f6545",
    mid.gray = "#69696e",
    la.salle.green = "#007d1b",
    governor.bay = "#3634a3",
    mahogany = "#c93400",
    crimson = "#d30f45",
    vivid.violet = "#8944ab",
    harvard.crimson = "#d70015",
    allports = "#0071a4",
    chelsea.gem = "#a05a00")
macos_accessible_light_palette <- unname(unlist(macos_accessible_light_cols))

macos_accessible_vibrant_dark_cols <- list(
    picton.blue = "#409cff",
    teak = "#b59469",
    aluminum = "#98989d",
    lime.green = "#28cd41",
    faded.blue = "#7d7aff",
    safety.orange = "#ff9500",
    radical.red = "#ff3a5f",
    heliotrope = "#da8fff",
    red.orange = "#ff4136",
    maya.blue = "#70d7ff",
    tangerine = "#ffcc00")
macos_accessible_vibrant_dark_palette <-
    unname(unlist(macos_accessible_vibrant_dark_cols))

macos_accessible_vibrant_light_cols <- list(
    palatinate.blue = "#0040dd",
    shingle.fawn = "#775d3b",
    storm.dust = "#616165",
    japanese.laurel = "#007018",
    governor.bay = "#3634a3",
    fire = "#ad3a00",
    shiraz = "#c11032",
    vivid.violet = "#8944ab",
    venetian.red = "#c20618",
    sea.blue = "#006796",
    tree.brown = "#925100")
macos_accessible_vibrant_light_palette <-
    unname(unlist(macos_accessible_vibrant_light_cols))

macos_dark_vibrant_cols <- list(
    dodger.blue = "#148eff",
    sandrift = "#b69872",
    gray.chateau = "#a2a2a7",
    ufo.green = "#3ce155",
    medium.slate.blue = "#6361f2",
    dark.tangerine = "#ffa914",
    radical.red = "#ff4169",
    heliotrope = "#cc65ff",
    sunset.orange = "#ff4f44",
    spray = "#6edcff",
    candlelight = "#ffe014")
macos_dark_vibrant_palette <- unname(unlist(macos_dark_vibrant_cols))

macos_dark_cols <- list(
    cool.blue = "#0a84ff",
    sandal = "#ac8e68",
    aluminum = "#98989d",
    lime.green = "#32d74b",
    majorelle.blue = "#5e5ce6",
    california = "#ff9f0a",
    radical.red = "#ff375f",
    medium.orchid = "#bf5af2",
    coral.red = "#ff453a",
    maya.blue = "#64d2ff",
    gold = "#ffd60a")
macos_dark_palette <- unname(unlist(macos_dark_cols))

macos_light_vibrant_cols <- list(
    brandeis.blue = "#0070f5",
    pale.brown = "#987a54",
    aluminium = "#848489",
    lime.green = "#1ec337",
    iris = "#5452cc",
    tangerine = "#f58b00",
    scarlet = "#f5234b",
    deep.lilac = "#9f4bc9",
    deep.carmine.pink = "#f53126",
    picton.blue = "#50bef0",
    golden.poppy = "#f5c200")
macos_light_vibrant_palette <- unname(unlist(macos_light_vibrant_cols))

macos_light_cols <- list(
    steel.blue = "#497db6",      # 1
    sorrell.brown = "#a2845e",   # 2
    oslo.gray = "#8e8e93",       # 3
    lime.green = "#28cd41",      # 4
    iris = "#5856d6",            # 5
    safety.orange = "#ff9500",   # 6
    radical.red = "#ff2d55",     # 7
    medium.orchid = "#af52de",   # 8
    red.orange = "#ff3b30",      # 9
    maya.blue = "#5ac8fa",       # 10
    tangerine = "#ffcc00")       # 11
macos_light_palette <- unname(unlist(macos_light_cols))

macos_cols_order <- list(default = 1:11,
                         contrast = c(1, 2, 4, 7, 8, 10, 6, 5, 3, 9, 11))

#' @title
#' macOS Color Palettes
#'
#' @md
#' @description
#' Set of color palettes based on
#' [macOS System Colors](https://developer.apple.com/design/human-interface-guidelines/macos/visual-design/color/).
#' General information about each palette can be found in the
#' [colors](../articles/colors.html) vignette.
#'
#' @details
#' These functions are ideal for accessing the raw color values, and can be used
#'  within functions where raw color values are needed, e.g., [plot].
#' In order to use them with `ggplot` functions, you must utilize one of the
#' followings:
#'
#' - [scale_colour_macos_light]
#' - [scale_colour_macos_dark]
#'
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' @param order Indicates the order of colors in the palette
#'
#' @rdname macos_colour_palettes
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(
#'     macos_light_pal(order = "default", accessible = FALSE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_light_pal(order = "default", accessible = FALSE,
#'     vibrant = TRUE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_light_pal(order = "default", accessible = TRUE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_light_pal(order = "default", accessible = TRUE,
#'     vibrant = TRUE)(11),
#'     borders = NA, labels = FALSE)
#'
#' scales::show_col(
#'     macos_light_pal(order = "contrast", accessible = FALSE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_light_pal(order = "contrast", accessible = FALSE,
#'     vibrant = TRUE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_light_pal(order = "contrast", accessible = TRUE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_light_pal(order = "contrast", accessible = TRUE,
#'     vibrant = TRUE)(11),
#'     borders = NA, labels = FALSE)
macos_light_pal <- function(order = "contrast", accessible = FALSE, vibrant = FALSE) {
    if (accessible) {
        if (vibrant) {
            scales::manual_pal(macos_accessible_vibrant_light_palette[
                macos_cols_order[[order]]])
        }else{
            scales::manual_pal(macos_accessible_light_palette[
                macos_cols_order[[order]]])
        }
    }else{
        if (vibrant) {
            scales::manual_pal(macos_light_vibrant_palette[
                macos_cols_order[[order]]])
        }else{
            scales::manual_pal(macos_light_palette[
                macos_cols_order[[order]]])
        }
    }
}

#' macOS Light Color Scales
#'
#' @md
#' @description
#' These scales meant to be used with light themes, e.g, `theme_sf_light()`.
#' While they can be used with dark themes, in general, we recommend pairing 
#' `scale_colour_*_light`s with light themes for better clarity and contrast.
#' 
#' → **Note**: *While macOS color palettes provide a total of 11 colors, we do not
#' recommend using them for more than 8 groups. The last three colors often
#' collide with other colors in the palette and may affect the clarity of your
#' visualization.*
#'
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' @param order Indicates the order of colors in the palette
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_colour_macos_light
#' @family colour scales
#' @export
scale_colour_macos_light <- function(order = "contrast", accessible = FALSE, vibrant = FALSE, ...) {
    if (accessible) {
        if (vibrant) {
            ggplot2::discrete_scale("colour", "macos_vibrant_light",
                                    macos_light_pal(order = order,
                                                    accessible = TRUE,
                                                    vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("colour", "macos_light",
                                    macos_light_pal(order = order,
                                                    accessible = TRUE,
                                                    vibrant = FALSE), ...)
        }
    }else{
        if (vibrant) {
            ggplot2::discrete_scale("colour", "macos_accessible_vibrant_light",
                                    macos_light_pal(order = order,
                                                    accessible = FALSE,
                                                    vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("colour", "macos_accessible_light",
                                    macos_light_pal(order = order,
                                                    accessible = FALSE,
                                                    vibrant = FALSE), ...)

        }
    }
}

#'
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' @param order Indicates the order of colors in the palette
#'
#' @export
#' @rdname scale_colour_macos_light
scale_fill_macos_light <- function(order = order, accessible = FALSE,
                                   vibrant = FALSE, ...) {
    if (accessible) {
        if (vibrant) {
            ggplot2::discrete_scale("fill", "macos_vibrant_light",
                                    macos_light_pal(order = order,
                                                    accessible = TRUE,
                                                    vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("fill", "macos_light",
                                    macos_light_pal(order = order,
                                                    accessible = TRUE,
                                                    vibrant = FALSE), ...)
        }
    }else{
        if (vibrant) {
            ggplot2::discrete_scale("fill", "macos_accessible_vibrant_light",
                                    macos_light_pal(order = order,
                                                    accessible = FALSE,
                                                    vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("fill", "macos_accessible_light",
                                    macos_light_pal(order = order,
                                                    accessible = FALSE,
                                                    vibrant = FALSE), ...)

        }
    }
}


#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' @param order Indicates the order of colors in the palette
#'
#' @rdname macos_colour_palettes
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(
#'     macos_dark_pal(order = "default", accessible = FALSE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_dark_pal(order = "default", accessible = FALSE,
#'     vibrant = TRUE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_dark_pal(order = "default", accessible = TRUE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_dark_pal(order = "default", accessible = TRUE,
#'     vibrant = TRUE)(11),
#'     borders = NA, labels = FALSE)
#'
#' scales::show_col(
#'     macos_dark_pal(order = "contrast", accessible = FALSE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_dark_pal(order = "contrast", accessible = FALSE,
#'     vibrant = TRUE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_dark_pal(order = "contrast", accessible = TRUE)(11),
#'     borders = NA, labels = FALSE)
#' scales::show_col(
#'     macos_dark_pal(order = "contrast", accessible = TRUE,
#'     vibrant = TRUE)(11),
#'     borders = NA, labels = FALSE)
macos_dark_pal <- function(order = "contrast", accessible = FALSE, vibrant = FALSE) {
    if (accessible) {
        if (vibrant) {
            scales::manual_pal(macos_accessible_vibrant_dark_palette[
                macos_cols_order[[order]]])
        }else{
            scales::manual_pal(macos_accessible_dark_palette[
                macos_cols_order[[order]]])
        }
    }else{
        if (vibrant) {
            scales::manual_pal(macos_dark_vibrant_palette[
                macos_cols_order[[order]]])
        }else{
            scales::manual_pal(macos_dark_palette[
                macos_cols_order[[order]]])
        }
    }
}

#' macOS Dark Color Scales
#'
#' @md
#' @description
#' These scales meant to be used with dark themes, e.g, `theme_sf_dark()`.
#' While they can be used with light themes, in general, we recommend pairing 
#' `scale_colour_*_dark`s with dark themes for better clarity and contrast.
#' 
#' → **Note**: *While macOS color palettes provide a total of 11 colors, we do not
#' recommend using them for more than 8 groups. The last three colors often
#' collide with other colors in the palette and may affect the clarity of your
#' visualization.*
#'
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' @param order Indicates the order of colors in the palette
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_colour_macos_dark
#' @family colour scales
#' @export
scale_colour_macos_dark <- function(order = "contrast", accessible = FALSE,
                                    vibrant = FALSE, ...) {
    if (accessible) {
        if (vibrant) {
            ggplot2::discrete_scale("colour", "macos_vibrant_dark",
                                    macos_dark_pal(order = order,
                                                   accessible = TRUE,
                                                   vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("colour", "macos_dark",
                                    macos_dark_pal(order = order,
                                                   accessible = TRUE,
                                                   vibrant = FALSE), ...)
        }
    }else{
        if (vibrant) {
            ggplot2::discrete_scale("colour", "macos_accessible_vibrant_dark",
                                    macos_dark_pal(order = order,
                                                   accessible = FALSE,
                                                   vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("colour", "macos_accessible_dark",
                                    macos_dark_pal(order = order,
                                                   accessible = FALSE,
                                                   vibrant = FALSE), ...)

        }
    }
}

#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' @param order Indicates the order of colors in the palette
#'
#' @export
#' @rdname scale_colour_macos_dark
scale_fill_macos_dark <- function(order = "contrast", accessible = FALSE,
                                  vibrant = FALSE, ...) {
    if (accessible) {
        if (vibrant) {
            ggplot2::discrete_scale("fill", "macos_vibrant_dark",
                                    macos_dark_pal(order = order,
                                                   accessible = TRUE,
                                                   vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("fill", "macos_dark",
                                    macos_dark_pal(order = order,
                                                   accessible = TRUE,
                                                   vibrant = FALSE), ...)
        }
    }else{
        if (vibrant) {
            ggplot2::discrete_scale("fill", "macos_accessible_vibrant_dark",
                                    macos_dark_pal(order = order,
                                                   accessible = FALSE,
                                                   vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("fill", "macos_accessible_dark",
                                    macos_dark_pal(order = order,
                                                   accessible = FALSE,
                                                   vibrant = FALSE), ...)

        }
    }
}
