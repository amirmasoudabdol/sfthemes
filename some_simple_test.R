library(tidyverse)
library(sfthemes)
library(hrbrthemes)

mtcars %>%
    ggplot(., aes(mpg, wt, color = factor(carb))) +
    geom_point() +
    labs(title = "San Francisco Text", subtitle = "Hello from Cali") +
    theme_sf_dark(scale = "Medium", offset_x_ticks = F, offset_y_ticks = F) +
    scale_color_ios_dark(accessible = FALSE)

mtcars %>%
    ggplot(., aes(mpg, color = factor(carb))) +
    geom_histogram() +
    labs(title = "San Francisco Text", subtitle = "Hello from Cali") +
    theme_sf_dark(scale = "Medium", offset_x_ticks = F, offset_y_ticks = F) +
    scale_color_ios_dark(accessible = FALSE)

ggsave("~/Desktop/test.png")

mtcars %>%
    ggplot(., aes(mpg, wt, color = factor(carb))) +
    geom_point() +
    facet_grid(gear ~ cyl) +
    labs(title = "San Francisco Text", subtitle = "Hello from Cali") +
    theme_sf_dark(scale = "xLarge", offset_x_ticks = F) +
    scale_color_ios_light(accessible = FALSE) +
    sf_xLarge_text() +
    theme(legend.position="bottom", legend.box = "horizontal")


mtcars %>%
    ggplot(., aes(mpg, hp, color = factor(carb))) +
    geom_point() +
    labs(title = "San Francisco Text", subtitle = "Hello from Cali") +
    theme_sf_dark() +
    scale_color_ios_dark(accessible = TRUE)

mtcars %>%
    ggplot(., aes(mpg, hp, color = factor(carb))) +
    geom_point() +
    labs(title = "San Francisco Text", subtitle = "Hello from Cali") +
    theme_sf_dark(scale = "xLarge") +
    scale_color_macos_light(accessible = FALSE, vibrant = FALSE)


mtcars %>%
    ggplot(., aes(mpg, hp, color = factor(carb))) +
    geom_point() +
    labs(title = "San Francisco Text", subtitle = "Hello from Cali") +
    theme_sf_dark() +
    scale_color_watchos_dark()

mtcars %>%
    ggplot(., aes(mpg, hp, color = factor(cyl))) +
    geom_point() +
    labs(title = "San Francisco Text", subtitle = "Hello from Cali") +
    theme_fivethirtyeight() +
    scale_color_fivethirtyeight()

mtcars %>%
    ggplot(., aes(mpg, hp, color = factor(cyl))) +
    geom_point() +
    labs(title = "San Francisco Text", subtitle = "Hello from Cali") +
    theme_ipsum_ps()

mtcars %>%
    ggplot(., aes(mpg, fill = factor(cyl), color = factor(cyl))) +
    geom_histogram() +
    theme_sf_light()

okabe <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

opts <- options(
    ggplot2.discrete.fill = list(
        ios_dark_palette
    ),
    ggplot2.discrete.color = list(
        ios_dark_palette
    ),
    ggplot2.continious.fill = list(
        ios_dark_palette
    ),
    ggplot2.continious.color = list(
        ios_dark_palette
    )
)
