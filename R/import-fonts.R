#' @title
#' Import Fonts
#'
#' @description
#' A few handy functions facilitating the process of importing and installing
#' custom fonts available in sfthemes.
#'
#' @md
#' @details
#' sfthemes package includes 8 faces of Inter typeface: Regular, Italic, Bold,
#' Bold Italic, Light, Light Italic, Extra Bold, Extra Bold Italic. The
#' `import_inter` function makes sure that these fonts are
#' correctly installed and can be accessed by R.
#'
#' @md
#' @note
#' - Make sure to run this command once after installing sfthemes, otherwise,
#' you will encounter some warning messages regarding a missing font.
#' Alternatively, you can download and install your fonts manually.
#'
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

