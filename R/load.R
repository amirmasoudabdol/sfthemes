# Borrowed from https://github.com/hrbrmstr/hrbrthemes/blob/master/R/zzz.r
#
.onAttach <- function(libname, pkgname) {

    if (interactive()) {
      packageStartupMessage("sfthemes is under *active* development. ")
      packageStartupMessage("See https://github.com/amirmasoudabdol/sfthemes for info/news.")
      packageStartupMessage(paste0("The process of importing fonts may not",
                            "work as expected, if not, please install them ",
                            "manually on your system."))
    }

    if (.Platform$OS.type == "windows") { # nocov start
        if (interactive()) packageStartupMessage("Registering Windows fonts with R")
        extrafont::loadfonts("win", quiet = TRUE)
    }

    if (interactive()) packageStartupMessage("Registering PDF & PostScript fonts with R")
    extrafont::loadfonts("pdf", quiet = TRUE)
    extrafont::loadfonts("postscript", quiet = TRUE)

    fnt <- extrafont::fonttable()
    if (!any(grepl("SF[ ]Pro|Inter[ ]", fnt$FamilyName))) {
        packageStartupMessage("NOTE: Either SF Pro or Inter fonts are required to use these themes.")
        packageStartupMessage("      Please use sfthemes::import_inter() to install Intel font.")
    } # nocov end

}
