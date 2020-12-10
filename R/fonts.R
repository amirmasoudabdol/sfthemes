#' SF Pro Font

#' Import SF Pro font for use in charts
#'
#' @rdname sf_pro_font
#'
#' @md
#' @note This will take care of ensuring PDF/PostScript usage. The location of the
#'   font directory is displayed after the base import is complete. It is highly
#'   recommended that you install them on your system the same way you would any
#'   other font you wish to use in other programs.
#' @export
import_sf_pro <- function() {

  extrafont::loadfonts()
  fnt <- extrafont::fonttable()
  if (!any(grepl("SF[ ]Pro", fnt$FamilyName))) {
      message("SF Pro is NOT installed in your system!\nDownload and install the font, and run this command again!")
      return();
  }

  message(
    "SF Pro is ready to use."
  )

}

#' @rdname sf_pro_font
#' @md
#' @title sf_pro_font font name R variable aliases
#' @description `font_sf_pro` == "`SFPro`"
#' @format length 1 character vector
#' @export
font_sf_pro <- "SFPro"

#' @rdname sf_pro_font
#' @md
#' @note `font_sf_pro_bold` (a.k.a. "`SFPro-Bold`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_sf_pro_bold` == "`SFPro-Bold`"
#' @export
font_sf_pro_bold <- "SFPro-Bold"

#' @rdname sf_pro_font
#' @md
#' @note `font_sf_pro_light` (a.k.a. "`SFPro-Light`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_sf_pro_light` == "`SFPro-Light`"
#' @export
font_sf_pro_light <- "SFPro-Light"


## Inter Font

#' Import Inter font for use in charts
#'
#' @rdname inter_font
#'
#' @md
#' @note This will take care of ensuring PDF/PostScript usage. The location of the
#'   font directory is displayed after the base import is complete. It is highly
#'   recommended that you install them on your system the same way you would any
#'   other font you wish to use in other programs.
#' @export
import_inter <- function() {

  inter_font_dir <- system.file("fonts", "Inter", package="sfthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(inter_font_dir, prompt=FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      inter_font_dir)
  )

}

#' @rdname inter_font
#' @md
#' @title Inter font name R variable aliases
#' @description `font_inter` == "`Inter`"
#' @format length 1 character vector
#' @export
font_inter <- "Inter"

#' @rdname inter_font
#' @md
#' @note `font_inter_bold` (a.k.a. "`Inter-Bold`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_inter_bold` == "`Inter-Bold`"
#' @export
font_inter_bold <- "Inter-Bold"

#' @rdname inter_font
#' @md
#' @note `font_inter_light` (a.k.a. "`Inter-Light`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_inter_light` == "`Inter-Light`"
#' @export
font_inter_light <- "Inter-Light"

