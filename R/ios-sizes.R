sf_element_sizes <- list("xSmall" = .75,
                         "Small" = 1,
                         "Medium" = 1.25,
                         "Large" = 2,
                         "xLarge" = 3,
                         "xxLarge" = 4,
                         "xxxLarge" = 5)

sf_xsmall_font_sizes <- list(
                faces = list(
                    "large_title" = "bold",
                    "title_1" = "bold",
                    "title_2" = "bold",
                    "title_3" = "bold",
                    "headline" = "bold",
                    "body" = "plain",
                    "callout" = "plain",
                    "subhead" = "plain",
                    "footnote" = "plain",
                    "caption" = "plain"),
                sizes =  list(
                    "large_title" = 31,
                    "title_1" = 25,
                    "title_2" = 19,
                    "title_3" = 17,
                    "headline" = 14,
                    "body" = 14,
                    "callout" = 13,
                    "subhead" = 12,
                    "footnote" = 12,
                    "caption" = 11 - 2)
                )
sf_small_font_sizes <- list(
                faces = list(
                    "large_title" = "bold",
                    "title_1" = "bold",
                    "title_2" = "bold",
                    "title_3" = "bold",
                    "headline" = "bold",
                    "body" = "plain",
                    "callout" = "plain",
                    "subhead" = "plain",
                    "footnote" = "plain",
                    "caption" = "plain"),
                sizes =  list(
                    "large_title" = 32,
                    "title_1" = 26,
                    "title_2" = 20,
                    "title_3" = 18,
                    "headline" = 15,
                    "body" = 15,
                    "callout" = 14,
                    "subhead" = 13,
                    "footnote" = 12,
                    "caption" = 11 - 2)
                )
sf_medium_font_sizes <- list(
                faces = list(
                    "large_title" = "bold",
                    "title_1" = "bold",
                    "title_2" = "bold",
                    "title_3" = "bold",
                    "headline" = "bold",
                    "body" = "plain",
                    "callout" = "plain",
                    "subhead" = "plain",
                    "footnote" = "plain",
                    "caption" = "plain"),
                sizes =  list(
                    "large_title" = 40,
                    "title_1" = 33,
                    "title_2" = 26,
                    "title_3" = 24,
                    "headline" = 21,
                    "body" = 21,
                    "callout" = 20,
                    "subhead" = 19,
                    "footnote" = 16,
                    "caption" = 13 - 2)
                )
sf_large_font_sizes <- list(
                faces = list(
                    "large_title" = "bold",
                    "title_1" = "bold",
                    "title_2" = "bold",
                    "title_3" = "bold",
                    "headline" = "bold",
                    "body" = "plain",
                    "callout" = "plain",
                    "subhead" = "plain",
                    "footnote" = "plain",
                    "caption" = "plain"),
                sizes =  list(
                    "large_title" = 41,
                    "title_1" = 34,
                    "title_2" = 28,
                    "title_3" = 25,
                    "headline" = 22,
                    "body" = 22,
                    "callout" = 21,
                    "subhead" = 20,
                    "footnote" = 18,
                    "caption" = 16 - 2)
                )

sf_xlarge_font_sizes <- list(
                faces = list(
                    "large_title" = "bold",
                    "title_1" = "bold",
                    "title_2" = "bold",
                    "title_3" = "bold",
                    "headline" = "bold",
                    "body" = "plain",
                    "callout" = "plain",
                    "subhead" = "plain",
                    "footnote" = "plain",
                    "caption" = "plain"),
                sizes =  list(
                    "large_title" = 43,
                    "title_1" = 37,
                    "title_2" = 30,
                    "title_3" = 28,
                    "headline" = 24,
                    "body" = 24,
                    "callout" = 23,
                    "subhead" = 22,
                    "footnote" = 20,
                    "caption" = 19 - 2)
                )

sf_xxlarge_font_sizes <- list(
                faces = list(
                    "large_title" = "bold",
                    "title_1" = "bold",
                    "title_2" = "bold",
                    "title_3" = "bold",
                    "headline" = "bold",
                    "body" = "plain",
                    "callout" = "plain",
                    "subhead" = "plain",
                    "footnote" = "plain",
                    "caption" = "plain"),
                sizes =  list(
                    "large_title" = 46,
                    "title_1" = 39,
                    "title_2" = 32,
                    "title_3" = 30,
                    "headline" = 26,
                    "body" = 26,
                    "callout" = 25,
                    "subhead" = 24,
                    "footnote" = 22,
                    "caption" = 21 - 2)
                )

sf_xxxlarge_font_sizes <- list(
                faces = list(
                    "large_title" = "bold",
                    "title_1" = "bold",
                    "title_2" = "bold",
                    "title_3" = "bold",
                    "headline" = "bold",
                    "body" = "plain",
                    "callout" = "plain",
                    "subhead" = "plain",
                    "footnote" = "plain",
                    "caption" = "plain"),
                sizes =  list(
                    "large_title" = 48,
                    "title_1" = 41,
                    "title_2" = 34,
                    "title_3" = 32,
                    "headline" = 29,
                    "body" = 29,
                    "callout" = 28,
                    "subhead" = 28,
                    "footnote" = 24,
                    "caption" = 23 - 2)
                )

# Returns text sizes for the given size class
sf_scale <- function(size = "Large") {
    if (size == "xSmall")
        return(sf_xsmall_font_sizes)
    if (size == "Small")
        return(sf_small_font_sizes)
    if (size == "Medium")
        return(sf_medium_font_sizes)
    if (size == "Large")
        return(sf_large_font_sizes)
    if (size == "xLarge")
        return(sf_xlarge_font_sizes)
    if (size == "xxLarge")
        return(sf_xxlarge_font_sizes)
    if (size == "xxxLarge")
        return(sf_xxxlarge_font_sizes)
}
