context("size_classes")
test_that("size classes are correct", {

  testthat::skip_on_cran()
  testthat::skip_on_appveyor()
  testthat::skip_on_travis()
  testthat::skip_on_os("windows")

  library(ggplot2)

  classes <- c("xSmall", "Small", "Medium", "Large", "xLarge", "xxLarge", "xxxLarge")
  for (i in 1:7) {

    ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
        geom_point(aes(shape=Species)) +
        xlab("Sepal Length") + ylab("Sepal Width") +
        labs(title = "Linear Fit", subtitle = classes[[i]], caption = "Lorem ipsum platea aliquam pharetra porttitor dictum orci quisque et suspendisse convallis") +
        geom_smooth(method="lm") +
        theme_sf_light(scale = classes[[i]]) +
        scale_color_ios_light(accessible = T)

    ggsave(paste0("figures/size_classes/iris_linear_fit_light_", i, "_",
                    classes[[i]], "_.png"),
           width = 20, height = 15, bg = "transparent", dpi = 72)

        ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
        geom_point(aes(shape=Species)) +
        xlab("Sepal Length") + ylab("Sepal Width") +
        labs(title = "Linear Fit", subtitle = classes[[i]], caption = "Lorem ipsum platea aliquam pharetra porttitor dictum orci quisque et suspendisse convallis") +
        geom_smooth(method="lm") +
        theme_sf_dark(scale = classes[[i]]) +
        scale_color_ios_dark(accessible = T)

    ggsave(paste0("figures/size_classes/iris_linear_fit_dark_", i, "_",
                    classes[[i]], "_.png"),
           width = 20, height = 15, bg = "transparent", dpi = 72)
  }

})
