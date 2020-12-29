# Borrowed from https://github.com/hrbrmstr/hrbrthemes/blob/master/R/zzz.r
#
.onAttach <- function(libname, pkgname) {

    if (interactive()) {
      packageStartupMessage("sfthemes is under _active_ development...")
      packageStartupMessage("See https://github.com/amirmasoudabdol/sfthemes for info/news.")
      packageStartupMessage(paste0("-> The process of importing fonts may not ",
                            "work as expected, if not, please manually install ",
                            "them on your system.\n"))
    }

    fnt <- extrafont::fonttable()
    if (!any(grepl("SF[ ]Pro|Inter[ ]", fnt$FamilyName))) {
        packageStartupMessage("NOTE: Either SF Pro or Inter fonts are required to use these themes.")
        packageStartupMessage("      Please use sfthemes::import_inter() to install Intel font.")
    } # nocov end

}
