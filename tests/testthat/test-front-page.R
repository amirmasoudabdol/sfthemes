context("samples")
test_that("front page figures are generated", {

    testthat::skip_on_cran()
    testthat::skip_on_appveyor()
    testthat::skip_on_travis()
    testthat::skip_on_os("windows")

    library(ggplot2)

    ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
        geom_point(aes(shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") +
        labs(title = "Linear Fit", subtitle = "Length ~ Width") +
        geom_smooth(method="lm") +
        theme_sf_light(scale = "xxxLarge") +
        scale_colour_ios_light(accessible = F) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/front_page_light.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
        geom_point(aes(shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") +
        labs(title = "Linear Fit", subtitle = "Length ~ Width") +
        geom_smooth(method="lm") +
        theme_sf_dark(scale = "xxxLarge") +
        scale_colour_ios_dark(accessible = F) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/front_page_dark.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    system("../../misc/stitch_two.sh figures/front_page/front_page_light.png figures/front_page/front_page_dark.png ../../man/figures/front-page-main.png")
})
