context("size_classes")
test_that("size classes are correct", {

  testthat::skip_on_cran()
  testthat::skip_on_appveyor()
  testthat::skip_on_travis()

  library(ggplot2)

  classes <- c("xSmall", "Small", "Medium", "Large", "xLarge", "xxLarge", "xxxLarge")
  for (i in 1:7) {
    
    ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
        geom_point(aes(shape=Species)) + 
        xlab("Sepal Length") + ylab("Sepal Width") +
        labs(title = "Linear Fit", subtitle = classes[[i]]) +
        geom_smooth(method="lm") +
        theme_sf_light(scale = classes[[i]], subtitle_margin = 25) +
        scale_color_ios_light(accessible = T) +
        theme(legend.position = "bottom")
    
    ggsave(paste0("figures/size_classes/iris_linear_fit_light_", i, "_", 
                    classes[[i]], "_.png"),
           width = 20, height = 15, bg = "transparent", dpi = 72)

        ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
        geom_point(aes(shape=Species)) + 
        xlab("Sepal Length") + ylab("Sepal Width") +
        labs(title = "Linear Fit", subtitle = classes[[i]]) +
        geom_smooth(method="lm") +
        theme_sf_dark(scale = classes[[i]], subtitle_margin = 25) +
        scale_color_ios_dark(accessible = T) +
        theme(legend.position = "bottom")
    
    ggsave(paste0("figures/size_classes/iris_linear_fit_dark_", i, "_", 
                    classes[[i]], "_.png"),
           width = 20, height = 15, bg = "transparent", dpi = 72)
  }

})