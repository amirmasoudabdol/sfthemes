context("samples")
test_that("scaling light sample figures are generated", {

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
            theme_sf_light(scale = classes[[i]]) +
            scale_color_ios_light(accessible = F) +
            theme(legend.position = "bottom")

        ggsave(paste0("figures/front_page/iris_linear_fit_light_", i, "_",
                      classes[[i]], ".png"),
               width = 20, height = 15, bg = "transparent", dpi = 72)

        ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
            geom_point(aes(shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") +
            labs(title = "Linear Fit", subtitle = classes[[i]]) +
            geom_smooth(method="lm") +
            theme_sf_dark(scale = classes[[i]]) +
            scale_color_ios_dark(accessible = F) +
            theme(legend.position = "bottom")

        ggsave(paste0("figures/front_page/iris_linear_fit_dark_", i, "_",
                      classes[[i]], ".png"),
               width = 20, height = 15, bg = "transparent", dpi = 72)

        system(paste0("../../misc/stitch_two.sh",
                      " figures/front_page/iris_linear_fit_light_", i, "_", classes[[i]], ".png",
                      " figures/front_page/iris_linear_fit_dark_", i, "_", classes[[i]], ".png",
                      " ../../tests/testthat/figures/front_page/iris_linear_fit_light_dark_", i, "_", classes[[i]], ".png"))
    }

    # system("convert -delay 30 figures/front_page/iris_linear_fit_light_*.png ../../man/figures/front-page-scaling-animation-light.gif")
    # system("convert -delay 30 figures/front_page/iris_linear_fit_dark_*.png ../../man/figures/front-page-scaling-animation-dark.gif")

    system("convert -delay 60 figures/front_page/iris_linear_fit_light_dark_*.png ../../man/figures/front-page-scaling-animation-light-dark.gif")


})
