context("pkgdown-articles")
test_that("figures showcasing text rescaling have been generated...", {

    testthat::skip_on_cran()
    testthat::skip_on_appveyor()
    testthat::skip_on_travis()
    testthat::skip_on_os("windows")

    library(ggplot2)

    classes <- c("xSmall", "Small", "Medium", "Large", "xLarge", "xxLarge", "xxxLarge")
    for (i in 1:7) {

        ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
            geom_point(aes(shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") +
            labs(title = "Linear Fit", subtitle = classes[[i]]) +
            geom_smooth(method="lm") +
            theme_sf_light(font_size_class = classes[[i]], element_size_class = "xLarge") +
            scale_colour_ios_light(accessible = F) +
            theme(legend.position = "bottom")

        ggsave(paste0("figures/articles/iris_linear_fit_light_font_", i, "_",
                      classes[[i]], ".png"),
               width = 20, height = 15, bg = "transparent", dpi = 72)

        ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
            geom_point(aes(shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") +
            labs(title = "Linear Fit", subtitle = classes[[i]]) +
            geom_smooth(method="lm") +
            theme_sf_dark(font_size_class = classes[[i]], element_size_class = "xLarge") +
            scale_colour_ios_dark(accessible = F) +
            theme(legend.position = "bottom")

        ggsave(paste0("figures/articles/iris_linear_fit_dark_font_", i, "_",
                      classes[[i]], ".png"),
               width = 20, height = 15, bg = "transparent", dpi = 72)

        system(paste0("../../misc/stitch_two_45.sh",
                      " figures/articles/iris_linear_fit_light_font_", i, "_", classes[[i]], ".png",
                      " figures/articles/iris_linear_fit_dark_font_", i, "_", classes[[i]], ".png",
                      " ../../tests/testthat/figures/articles/iris_linear_fit_light_dark_font_", i, "_", classes[[i]], ".png"))
    }

    # system("convert -delay 60 figures/articles/iris_linear_fit_light_font_*.png ../../vignettes/images/size-classes-font-scaling-animation-light.gif")
    # system("convert -delay 60 figures/articles/iris_linear_fit_dark_font_*.png ../../vignettes/images/size-classes-font-scaling-animation-dark.gif")

    system("convert -delay 60 figures/articles/iris_linear_fit_light_dark_font_*.png ../../vignettes/images/size-classes-font-scaling-animation-light-dark.gif")

})

test_that("figures showcasing element rescaling have been generated...", {

    testthat::skip_on_cran()
    testthat::skip_on_appveyor()
    testthat::skip_on_travis()
    testthat::skip_on_os("windows")

    library(ggplot2)

    classes <- c("xSmall", "Small", "Medium", "Large", "xLarge", "xxLarge", "xxxLarge")
    for (i in 1:7) {

        ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
            geom_point(aes(shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") +
            labs(title = "Linear Fit", subtitle = classes[[i]]) +
            geom_smooth(method="lm") +
            theme_sf_light(font_size_class = "xLarge", element_size_class = classes[[i]]) +
            scale_colour_ios_light(accessible = F) +
            theme(legend.position = "bottom")

        ggsave(paste0("figures/articles/iris_linear_fit_light_element_", i, "_",
                      classes[[i]], ".png"),
               width = 20, height = 15, bg = "transparent", dpi = 72)

        ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
            geom_point(aes(shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") +
            labs(title = "Linear Fit", subtitle = classes[[i]]) +
            geom_smooth(method="lm") +
            theme_sf_dark(font_size_class = "xLarge", element_size_class = classes[[i]]) +
            scale_colour_ios_dark(accessible = F) +
            theme(legend.position = "bottom")

        ggsave(paste0("figures/articles/iris_linear_fit_dark_element_", i, "_",
                      classes[[i]], ".png"),
               width = 20, height = 15, bg = "transparent", dpi = 72)

        system(paste0("../../misc/stitch_two_45.sh",
                      " figures/articles/iris_linear_fit_light_element_", i, "_", classes[[i]], ".png",
                      " figures/articles/iris_linear_fit_dark_element_", i, "_", classes[[i]], ".png",
                      " ../../tests/testthat/figures/articles/iris_linear_fit_light_dark_element_", i, "_", classes[[i]], ".png"))
    }

    # system("convert -delay 60 figures/articles/iris_linear_fit_light_element_*.png ../../vignettes/images/size-classes-element-scaling-animation-light.gif")
    # system("convert -delay 60 figures/articles/iris_linear_fit_dark_element_*.png ../../vignettes/images/size-classes-element-scaling-animation-dark.gif")

    system("convert -delay 60 figures/articles/iris_linear_fit_light_dark_element_*.png ../../vignettes/images/size-classes-element-scaling-animation-light-dark.gif")

})
