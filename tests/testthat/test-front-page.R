context("pkgdown-front-page")
test_that("main front page figures have been generated...", {

    testthat::skip_on_cran()
    testthat::skip_on_appveyor()
    testthat::skip_on_travis()
    testthat::skip_on_os("windows")

    library(ggplot2)

    ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
        geom_point(aes(shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") +
        labs(title = "SF Light/Dark Themes", 
							subtitle = "iOS Light/Dark Color Palette") +
        geom_smooth(method="lm") +
        theme_sf_light(size_class =  "xxxLarge") +
        scale_colour_ios_light(accessible = F) +
        theme(legend.position = "bottom")

    ggsave("../../man/figures/front-page-sample-light.png", width = 20, height = 15, bg = "transparent", dpi = 72)
    ggsave("figures/front_page/front_page_light.png", width = 20, height = 15, bg = "transparent", dpi = 72)
    ggsave("figures/front_page/front_page_light_alt.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
        geom_point(aes(shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") +
        labs(title = "SF Light/Dark Themes", 
							subtitle = "iOS Light/Dark Color Palette") +
        geom_smooth(method="lm") +
        theme_sf_dark(size_class =  "xxxLarge") +
        scale_colour_ios_dark(accessible = F) +
        theme(legend.position = "bottom")

    ggsave("../../man/figures/front-page-sample-dark.png", width = 20, height = 15, bg = "transparent", dpi = 72)
    ggsave("figures/front_page/front_page_dark.png", width = 20, height = 15, bg = "transparent", dpi = 72)
    ggsave("figures/front_page/front_page_dark_alt.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    # Light →  Dark
    system("../../misc/stitch_two_45.sh figures/front_page/front_page_light.png figures/front_page/front_page_dark.png ../../man/figures/front-page-main.png")

    # Adding rounded corner
    system("convert -size 1440x1080 xc:none -draw \"roundrectangle 0,0,1440,1080,15,15\" mask.png")
    system("convert ../../man/figures/front-page-main.png -matte mask.png \\
            -compose DstIn -composite ../../man/figures/front-page-main.png")

    # Adding shadow
    system("convert ../../man/figures/front-page-main.png \\( +clone  -background black -shadow 40x40+0+0 \\) +swap \\
                -background none   -layers merge  +repage   ../../man/figures/front-page-main.png")

    # Dark →  Light
    system("../../misc/stitch_two_45.sh figures/front_page/front_page_dark_alt.png figures/front_page/front_page_light_alt.png ../../man/figures/front-page-main-alt.png")

    # Adding rounded corner
    system("convert -size 1440x1080 xc:none -draw \"roundrectangle 0,0,1440,1080,15,15\" mask.png")
    system("convert ../../man/figures/front-page-main-alt.png -matte mask.png \\
            -compose DstIn -composite ../../man/figures/front-page-main-alt.png")

    # Adding shadow
    system("convert ../../man/figures/front-page-main-alt.png \\( +clone  -background gray -shadow 40x40+0+0 \\) +swap \\
                -background none   -layers merge  +repage   ../../man/figures/front-page-main-alt.png")


})
