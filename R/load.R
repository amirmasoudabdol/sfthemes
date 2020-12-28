# Borrowed from https://github.com/hrbrmstr/hrbrthemes/blob/master/R/zzz.r
#
.onAttach <- function(libname, pkgname) {

    if (.Platform$OS.type == "windows") { # nocov start
        if (interactive()) packageStartupMessage("Registering Windows fonts with R")
        extrafont::loadfonts("win", quiet = TRUE)
    }

    # Load fonts
    if (interactive()) packageStartupMessage("Registering PDF & PostScript fonts with R")
    extrafont::loadfonts("pdf", quiet = TRUE)
    extrafont::loadfonts("postscript", quiet = TRUE)

    fnt <- extrafont::fonttable()
    if (!any(grepl("SF[ ]Pro|Inter[ ]", fnt$FamilyName))) {
        packageStartupMessage("NOTE: Either SF Pro or Inter fonts are required
                                     to use these themes.")
        packageStartupMessage("Installing Intel...")
        sfthemes::import_inter()
    } 

}
