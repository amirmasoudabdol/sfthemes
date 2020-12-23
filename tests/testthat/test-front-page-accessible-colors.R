context("samples")
test_that("accessible light sample figures are generated", {

    testthat::skip_on_cran()
    testthat::skip_on_appveyor()
    testthat::skip_on_travis()
    testthat::skip_on_os("windows")

    library(ggplot2)

    ggplot(data = iris, aes(x = Sepal.Width, fill = Species, color = Species)) +
        geom_histogram(binwidth = 0.2) +
        xlab("Sepal Width") +  ylab("Frequency") +
        labs(title = "Histogram of Sepal Width") +
        theme_sf_light(scale = "xxxLarge") +
        facet_grid(Species ~ .) +
        scale_color_ios_light(accessible = F) +
        scale_fill_ios_light(accessible = F) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/accessible_off_light.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    ggplot(data = iris, aes(x = Sepal.Width, fill = Species, color = Species)) +
        geom_histogram(binwidth = 0.2) +
        xlab("Sepal Width") +  ylab("Frequency") +
        labs(title = "Histogram of Sepal Width") +
        theme_sf_light(scale = "xxxLarge") +
        facet_grid(Species ~ .) +
        scale_color_ios_light(accessible = T) +
        scale_fill_ios_light(accessible = T) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/accessible_on_light.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    system("../../misc/stitch_two.sh figures/front_page/accessible_off_light.png figures/front_page/accessible_on_light.png ../../man/figures/front-page-accessible-on-off-light.png")
})

test_that("accessible dark sample figures are generated", {

    testthat::skip_on_cran()
    testthat::skip_on_appveyor()
    testthat::skip_on_travis()

    library(ggplot2)

    ggplot(data = iris, aes(x = Sepal.Width, fill = Species, color = Species)) +
        geom_histogram(binwidth = 0.2) +
        xlab("Sepal Width") +  ylab("Frequency") +
        labs(title = "Histogram of Sepal Width") +
        theme_sf_dark(scale = "xxxLarge") +
        facet_grid(Species ~ .) +
        scale_color_ios_dark(accessible = F) +
        scale_fill_ios_dark(accessible = F) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/accessible_off_dark.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    ggplot(data = iris, aes(x = Sepal.Width, fill = Species, color = Species)) +
        geom_histogram(binwidth = 0.2) +
        xlab("Sepal Width") +  ylab("Frequency") +
        labs(title = "Histogram of Sepal Width") +
        theme_sf_dark(scale = "xxxLarge") +
        facet_grid(Species ~ .) +
        scale_color_ios_dark(accessible = T) +
        scale_fill_ios_dark(accessible = T) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/accessible_on_dark.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    system("../../misc/stitch_two.sh figures/front_page/accessible_off_dark.png figures/front_page/accessible_on_dark.png ../../man/figures/front-page-accessible-on-off-dark.png")
})
