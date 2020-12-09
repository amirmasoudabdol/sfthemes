.onAttach <- function(libname, pkgname) {

    # TODO: Check for the existence of either of the fonts!

    if (.Platform$OS.type == "windows")  { # nocov start
        if (interactive()) packageStartupMessage("Registering Windows fonts with R")
        extrafont::loadfonts("win", quiet = TRUE)
    }

    extrafont::loadfonts("pdf", quiet = TRUE)
    extrafont::loadfonts("postscript", quiet = TRUE)

    fnt <- extrafont::fonttable()
    if (!any(grepl("SF[ ]Pro|Inter[ ]", fnt$FamilyName))) {
        packageStartupMessage("NOTE: Either SF Pro or Inter fonts are required to use these themes.")
    } # nocov end

}
