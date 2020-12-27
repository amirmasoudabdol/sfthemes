context("pkgdown-front-page")
test_that("front page figures showcasing the accessible light colors have been generated...", {

    testthat::skip_on_cran()
    testthat::skip_on_appveyor()
    testthat::skip_on_travis()
    testthat::skip_on_os("windows")

    library(ggplot2)
    library(dplyr)

    iris.sum <- iris %>%
        group_by(Species) %>%
        summarize(
            # Sepal.Length
            SL.length    = length(Sepal.Length),
            SL.mean      = mean(Sepal.Length),
            SL.sd        = sd(Sepal.Length),
            SL.se        = SL.sd / sqrt(SL.length),
            # Sepal.Width
            SW.length    = length(Sepal.Width),
            SW.mean      = mean(Sepal.Width),
            SW.sd        = sd(Sepal.Width),
            SW.se        = SW.sd / sqrt(SW.length),
            # Petal.Length
            PL.length    = length(Petal.Length),
            PL.mean      = mean(Petal.Length),
            PL.sd        = sd(Petal.Length),
            PL.se        = PL.sd / sqrt(PL.length),
            # Petal.Width
            PW.length    = length(Petal.Width),
            PW.mean      = mean(Petal.Width),
            PW.sd        = sd(Petal.Width),
            PW.se        = PW.sd / sqrt(PW.length))

    ggplot(data = iris.sum, aes(x = Species)) +
        geom_bar(aes(y = PW.mean, fill = Species, color = Species), position = "dodge", stat = "identity") +
        geom_errorbar(aes(ymin = PW.mean - PW.sd, ymax = PW.mean + PW.sd), width = 0.5, position = position_dodge(width = 0.5), color = "black") + 
				labs(title = "SF Light Theme", 
							subtitle = "iOS Light Color Palette - Normal vs. Accessible") +
        theme_sf_light(size_class =  "xxxLarge") +
        scale_colour_ios_light(accessible = F) +
        scale_fill_ios_light(accessible = F) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/accessible_off_light.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    ggplot(data = iris.sum, aes(x = Species)) +
        geom_bar(aes(y = PW.mean, fill = Species, color = Species), position = "dodge", stat = "identity") +
        geom_errorbar(aes(ymin = PW.mean - PW.sd, ymax = PW.mean + PW.sd), width = 0.5, position = position_dodge(width = 0.5), color = "black") + 
				labs(title = "SF Light Theme", 
							subtitle = "iOS Light Color Palette - Normal vs. Accessible") +
        theme_sf_light(size_class =  "xxxLarge") +
        scale_colour_ios_light(accessible = T) +
        scale_fill_ios_light(accessible = T) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/accessible_on_light.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    system("../../misc/stitch_two_45.sh figures/front_page/accessible_off_light.png figures/front_page/accessible_on_light.png ../../man/figures/front-page-accessible-on-off-light.png")
})

test_that("front page figures showcasing the accessible dark colors have been generated...", {

    testthat::skip_on_cran()
    testthat::skip_on_appveyor()
    testthat::skip_on_travis()

    library(ggplot2)
    library(dplyr)

    iris.sum <- iris %>%
        group_by(Species) %>%
        summarize(
            # Sepal.Length
            SL.length    = length(Sepal.Length),
            SL.mean      = mean(Sepal.Length),
            SL.sd        = sd(Sepal.Length),
            SL.se        = SL.sd / sqrt(SL.length),
            # Sepal.Width
            SW.length    = length(Sepal.Width),
            SW.mean      = mean(Sepal.Width),
            SW.sd        = sd(Sepal.Width),
            SW.se        = SW.sd / sqrt(SW.length),
            # Petal.Length
            PL.length    = length(Petal.Length),
            PL.mean      = mean(Petal.Length),
            PL.sd        = sd(Petal.Length),
            PL.se        = PL.sd / sqrt(PL.length),
            # Petal.Width
            PW.length    = length(Petal.Width),
            PW.mean      = mean(Petal.Width),
            PW.sd        = sd(Petal.Width),
            PW.se        = PW.sd / sqrt(PW.length))

    ggplot(data = iris.sum, aes(x = Species)) +
        geom_bar(aes(y = PW.mean, fill = Species, color = Species), position = "dodge", stat = "identity") +
        geom_errorbar(aes(ymin = PW.mean - PW.sd, ymax = PW.mean + PW.sd), width = 0.5, position = position_dodge(width = 0.5), color = "white") + 
				labs(title = "SF Dark Theme", 
							subtitle = "iOS Dark Color Palette - Normal vs. Accessible") +
        theme_sf_dark(size_class =  "xxxLarge") +
        scale_colour_ios_dark(accessible = F) +
        scale_fill_ios_dark(accessible = F) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/accessible_off_dark.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    ggplot(data = iris.sum, aes(x = Species)) +
        geom_bar(aes(y = PW.mean, fill = Species, color = Species), position = "dodge", stat = "identity") +
        geom_errorbar(aes(ymin = PW.mean - PW.sd, ymax = PW.mean + PW.sd), width = 0.5, position = position_dodge(width = 0.5), color = "white") + 
				labs(title = "SF Dark Theme", 
							subtitle = "iOS Dark Color Palette - Normal vs. Accessible") +
        theme_sf_dark(size_class =  "xxxLarge") +
        scale_colour_ios_dark(accessible = T) +
        scale_fill_ios_dark(accessible = T) +
        theme(legend.position = "bottom")

    ggsave("figures/front_page/accessible_on_dark.png", width = 20, height = 15, bg = "transparent", dpi = 72)

    system("../../misc/stitch_two_45.sh figures/front_page/accessible_off_dark.png figures/front_page/accessible_on_dark.png ../../man/figures/front-page-accessible-on-off-dark.png")
})
