#' SF Pro Font

#' @title
#' San Francisco Pro Typeface
#'
#' @description
#' SF Pro font for use in charts
#'
#' @md
#' @note
#' - Due to limitation of `extrafont` and format of SF Pro, these functions
#' might not working as expected.
#'
#' @rdname sf_pro_font
#'
#' @export
import_sf_pro <- function() {

  extrafont::loadfonts(quiet = TRUE)
  fnt <- extrafont::fonttable()
  if (!any(grepl("SF[ ]Pro", fnt$FamilyName))) {
    message("SF Pro is NOT installed in your system!\n
        Download and install the font, and run this command again!")
    return()
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

#' @title
#' Inter Typeface
#'
#' @description
#' sfthemes package includes 4 faces of Inter typeface, Regular, Italic, Bold,
#' and Bold Italic. The `import_inter` function makes sure that these fonts are
#' correctly installed and can be accessed by R. The `sf_set_inter` can be used
#' to set Inter as the primary font of any other themes.
#'
#' @md
#' @note
#' - Make sure to run this command once after installing sfthemes, otherwise,
#' you will encounter some warning messages regarding a missing font.
#' - If you have already installed Inter in your system, you do not need to run
#' this command.
#'
#' @rdname inter_font
#' @export
import_inter <- function() {

  inter_font_dir <- system.file("fonts", "Inter", package="sfthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(inter_font_dir,
                               prompt=FALSE)))

  message(
  sprintf(
    "You will likely need to install these fonts on your system as well.\n\n
    You can find them in [%s]",
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
