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
macos_accessible_vibrant_dark_palette <- unname(unlist(macos_accessible_vibrant_dark_cols))

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
macos_accessible_vibrant_light_palette <- unname(unlist(macos_accessible_vibrant_light_cols))

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
    steel.blue = "#497db6",
    sorrell.brown = "#a2845e",
    oslo.gray = "#8e8e93",
    lime.green = "#28cd41",
    iris = "#5856d6",
    safety.orange = "#ff9500",
    radical.red = "#ff2d55",
    medium.orchid = "#af52de",
    red.orange = "#ff3b30",
    maya.blue = "#5ac8fa",
    tangerine = "#ffcc00")
macos_light_palette <- unname(unlist(macos_light_cols))

#' A color palette based on iOS Light Palette
#' 
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' 
#' @rdname scale_macos_dark
#'
#' @export
#' @examples \dontrun{
#' library(scales)
#' scales::show_col(macos_light_pal()(9), border = NA)
#' }
macos_light_pal <- function(accessible = FALSE, vibrant = FALSE) {
    if (accessible) {
        if (vibrant){
            scales::manual_pal(macos_accessible_vibrant_light_palette)
        }else{
            scales::manual_pal(macos_accessible_light_palette)
        }
    }else{
        if (vibrant){
            scales::manual_pal(macos_light_vibrant_palette)
        }else{
            scales::manual_pal(macos_light_palette)
        }
    }
}

#' Discrete color & fill scales based on the iOS Light Palette
#'
#' See [macos_light_palette()].
#' 
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_macos_color
#' @export
scale_colour_macos_light <- function(accessible = FALSE, vibrant = FALSE, ...) {
    if (accessible){
        if (vibrant){
            ggplot2::discrete_scale("colour", "macos_vibrant_light", macos_light_pal(accessible = TRUE, vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("colour", "macos_light", macos_light_pal(accessible = TRUE, vibrant = FALSE), ...)
        }
    }else{
        if (vibrant){
            ggplot2::discrete_scale("colour", "macos_accessible_vibrant_light", macos_light_pal(accessible = FALSE, vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("colour", "macos_accessible_light", macos_light_pal(accessible = FALSE, vibrant = FALSE), ...)

        }
    }
}

#' @export
#' @rdname scale_macos_light
scale_color_macos_light <- scale_colour_macos_light

#' 
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' @export
#' @rdname scale_macos_light
scale_fill_macos_light <- function(accessible = FALSE, vibrant = FALSE, ...) {
    if (accessible){
        if (vibrant){
            ggplot2::discrete_scale("fill", "macos_vibrant_light", macos_light_pal(accessible = TRUE, vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("fill", "macos_light", macos_light_pal(accessible = TRUE, vibrant = FALSE), ...)
        }
    }else{
        if (vibrant){
            ggplot2::discrete_scale("fill", "macos_accessible_vibrant_light", macos_light_pal(accessible = FALSE, vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("fill", "macos_accessible_light", macos_light_pal(accessible = FALSE, vibrant = FALSE), ...)

        }
    }
}


# Dark

#' A color palette based on iOS Light Palette
#' 
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' 
#' @rdname scale_macos_dark
#' 
#' @export
#' @examples \dontrun{
#' library(scales)
#' scales::show_col(macos_light_pal()(9), border = NA)
#' }
macos_dark_pal <- function(accessible = FALSE, vibrant = FALSE) {
    if (accessible) {
        if (vibrant){
            scales::manual_pal(macos_accessible_vibrant_dark_palette)
        }else{
            scales::manual_pal(macos_accessible_dark_palette)
        }
    }else{
        if (vibrant){
            scales::manual_pal(macos_dark_vibrant_palette)
        }else{
            scales::manual_pal(macos_dark_palette)
        }
    }
}

#' Discrete color & fill scales based on the iOS dark Palette
#'
#' See [macos_dark_palette()].
#' 
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_macos_color
#' @export
scale_colour_macos_dark <- function(accessible = FALSE, vibrant = FALSE, ...) {
    if (accessible){
        if (vibrant){
            ggplot2::discrete_scale("colour", "macos_vibrant_dark", macos_dark_pal(accessible = TRUE, vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("colour", "macos_dark", macos_dark_pal(accessible = TRUE, vibrant = FALSE), ...)
        }
    }else{
        if (vibrant){
            ggplot2::discrete_scale("colour", "macos_accessible_vibrant_dark", macos_dark_pal(accessible = FALSE, vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("colour", "macos_accessible_dark", macos_dark_pal(accessible = FALSE, vibrant = FALSE), ...)

        }
    }
}

#' @export
#' @rdname scale_macos_dark
scale_color_macos_dark <- scale_colour_macos_dark

#' 
#' @param accessible Returns accessible alternative of colors
#' @param vibrant Returns vibrant alternative of colors
#' 
#' @export
#' @rdname scale_macos_dark
scale_fill_macos_dark <- function(accessible = FALSE, vibrant = FALSE, ...) {
    if (accessible){
        if (vibrant){
            ggplot2::discrete_scale("fill", "macos_vibrant_dark", macos_dark_pal(accessible = TRUE, vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("fill", "macos_dark", macos_dark_pal(accessible = TRUE, vibrant = FALSE), ...)
        }
    }else{
        if (vibrant){
            ggplot2::discrete_scale("fill", "macos_accessible_vibrant_dark", macos_dark_pal(accessible = FALSE, vibrant = TRUE), ...)
        }else{
            ggplot2::discrete_scale("fill", "macos_accessible_dark", macos_dark_pal(accessible = FALSE, vibrant = FALSE), ...)

        }
    }
}
