context("samples")
test_that("front page figures are generated", {

    testthat::skip_on_cran()
    testthat::skip_on_appveyor()
    testthat::skip_on_travis()
    testthat::skip_on_os("windows")

    library(scales)

    png(file="figures/articles/ios-light.png")
    scales::show_col(
        ios_light_pal(order = "default", accessible = FALSE)(9),
        borders = NA, labels = FALSE, ncol = 9)
    dev.off()
    system("convert figures/articles/ios-light.png -trim ../../vignettes/images/ios-light.png")

    png(file="figures/articles/ios-light-contrast.png")
    scales::show_col(
        ios_light_pal(order = "contrast", accessible = FALSE)(9),
        borders = NA, labels = FALSE, ncol = 9)
    dev.off()
    system("convert figures/articles/ios-light-contrast.png -trim ../../vignettes/images/ios-light-contrast.png")

    png(file="figures/articles/ios-light-accessible.png")
    scales::show_col(
        ios_light_pal(order = "default", accessible = TRUE)(9),
        borders = NA, labels = FALSE, ncol = 9)
    dev.off()
    system("convert figures/articles/ios-light-accessible.png -trim ../../vignettes/images/ios-light-accessible.png")


    png(file="figures/articles/macos-light.png")
    scales::show_col(
        macos_light_pal(order = "default", accessible = FALSE)(11),
        borders = NA, labels = FALSE, ncol = 11)
    dev.off()
    system("convert figures/articles/macos-light.png -trim ../../vignettes/images/macos-light.png")


    png(file="figures/articles/macos-light-vibrant.png")
    scales::show_col(
        macos_light_pal(order = "default", accessible = FALSE, vibrant = TRUE)(11),
        borders = NA, labels = FALSE, ncol = 11)
    dev.off()
    system("convert figures/articles/macos-light-vibrant.png -trim ../../vignettes/images/macos-light-vibrant.png")


    png(file="figures/articles/watchos-dark.png")
    scales::show_col(
        watchos_dark_pal(order = "default")(10),
        borders = NA, labels = FALSE, ncol = 10)
    dev.off()
    system("convert figures/articles/watchos-dark.png -trim ../../vignettes/images/watchos-dark.png")

})
