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

  extrafont::loadfonts(quiet = TRUE)
  fnt <- extrafont::fonttable()
  if (!any(grepl("SF[ ]Pro", fnt$FamilyName))) {
      message("SF Pro is NOT installed in your system!\nDownload and install the font, and run this command again!")
      return();
  }

  message(
    "SF Pro is ready to use."
  )

}


font_sf_pro <- "SFPro-Regular"
font_sf_pro_text <- "SFProText"
font_sf_pro_disply <- "SFProDisplay"

font_sf_pro_bold <- "SFPro-Bold"
font_sf_pro_text_bold <- "SFProText-Bold"
font_sf_pro_disply_bold <- "SFProDisplay-Bold"

#' @rdname sf_pro_font
#' @export
sf_set_sf_pro <- function() {

  # Overwriting all families

  ret <- theme()
  ret <- ret + theme(axis.title = element_text(family=font_sf_pro))
  ret <- ret + theme(axis.title.x = element_text(family=font_sf_pro))
  ret <- ret + theme(axis.title.y = element_text(family=font_sf_pro))
  ret <- ret + theme(axis.title.y.right = element_text(family=font_sf_pro))
  ret <- ret + theme(strip.text = element_text(family=font_sf_pro))
  ret <- ret + theme(plot.title = element_text(family=font_sf_pro))
  ret <- ret + theme(plot.subtitle = element_text(family=font_sf_pro))
  ret <- ret + theme(plot.caption = element_text(family=font_sf_pro))

  ret <- ret + theme(legend.title = element_text(family=font_sf_pro))
  ret <- ret + theme(legend.text = element_text(family=font_sf_pro))

  ret
}


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


font_inter <- "Inter"
font_inter_bold <- "Inter Bold"


#' @rdname inter_font
#' @export
sf_set_inter <- function() {

  # Overwriting all families

  ret <- theme()
  ret <- ret + theme(axis.title = element_text(family=font_inter))
  ret <- ret + theme(axis.title.x = element_text(family=font_inter))
  ret <- ret + theme(axis.title.y = element_text(family=font_inter))
  ret <- ret + theme(axis.title.y.right = element_text(family=font_inter))
  ret <- ret + theme(strip.text = element_text(family=font_inter))
  ret <- ret + theme(plot.title = element_text(family=font_inter))
  ret <- ret + theme(plot.subtitle = element_text(family=font_inter))
  ret <- ret + theme(plot.caption = element_text(family=font_inter))

  ret <- ret + theme(legend.title = element_text(family=font_inter))
  ret <- ret + theme(legend.text = element_text(family=font_inter))

  ret
}
