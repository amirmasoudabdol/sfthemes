#' Size classes for different scaling
#' 

sf_element_sizes <- list("xSmall" = .75,
                         "Small" = 1,
                         "Medium" = 1.25,
                         "Large" = 2,
                         "xLarge" = 3,
                         "xxLarge" = 4,
                         "xxxLarge" = 5);

#' sf_xSmall
sf_xSmall_font_sizes <- list(types = list("large_title" = "regular",
				"title_1" = "regular",
				"title_2" = "regular",
				"title_3" = "regular",
				"headline" = "semi-bold",
				"body" = "regular",
				"callout" = "regular",
				"subhead" = "regular",
				"footnote" = "regular",
				"caption_1" = "regular",
				"caption_2" = "regular"),
				sizes =  list("large_title" = 31,
					"title_1" = 25,
					"title_2" = 19,
					"title_3" = 17,
					"headline" = 14,
					"body" = 14,
					"callout" = 13,
					"subhead" = 12,
					"footnote" = 12,
					"caption_1" = 11 - 2,
					"caption_2" = 11 - 2))
#' sf_Small
sf_Small_font_sizes <- list(types = list("large_title" = "regular",
				"title_1" = "regular",
				"title_2" = "regular",
				"title_3" = "regular",
				"headline" = "semi-bold",
				"body" = "regular",
				"callout" = "regular",
				"subhead" = "regular",
				"footnote" = "regular",
				"caption_1" = "regular",
				"caption_2" = "regular"),
				sizes =  list("large_title" = 32,
					"title_1" = 26,
					"title_2" = 20,
					"title_3" = 18,
					"headline" = 15,
					"body" = 15,
					"callout" = 14,
					"subhead" = 13,
					"footnote" = 12,
					"caption_1" = 11 - 2,
					"caption_2" = 11 - 2))
#' sf_Medium
sf_Medium_font_sizes <- list(types = list("large_title" = "regular",
				"title_1" = "regular",
				"title_2" = "regular",
				"title_3" = "regular",
				"headline" = "semi-bold",
				"body" = "regular",
				"callout" = "regular",
				"subhead" = "regular",
				"footnote" = "regular",
				"caption_1" = "regular",
				"caption_2" = "regular"),
				sizes =  list("large_title" = 40,
					"title_1" = 33,
					"title_2" = 26,
					"title_3" = 24,
					"headline" = 21,
					"body" = 21,
					"callout" = 20,
					"subhead" = 19,
					"footnote" = 16,
					"caption_1" = 13 - 2,
					"caption_2" = 13 - 2))
#' sf_Large
sf_Large_font_sizes <- list(types = list("large_title" = "regular",
				"title_1" = "regular",
				"title_2" = "regular",
				"title_3" = "regular",
				"headline" = "semi-bold",
				"body" = "regular",
				"callout" = "regular",
				"subhead" = "regular",
				"footnote" = "regular",
				"caption_1" = "regular",
				"caption_2" = "regular"),
				sizes =  list("large_title" = 41,
					"title_1" = 34,
					"title_2" = 28,
					"title_3" = 25,
					"headline" = 22,
					"body" = 22,
					"callout" = 21,
					"subhead" = 20,
					"footnote" = 18,
					"caption_1" = 16 - 2,
					"caption_2" = 13 - 2))

#' sf_xLarge
sf_xLarge_font_sizes <- list(types = list("large_title" = "regular",
				"title_1" = "regular",
				"title_2" = "regular",
				"title_3" = "regular",
				"headline" = "semi-bold",
				"body" = "regular",
				"callout" = "regular",
				"subhead" = "regular",
				"footnote" = "regular",
				"caption_1" = "regular",
				"caption_2" = "regular"),
				sizes =  list("large_title" = 43,
					"title_1" = 37,
					"title_2" = 30,
					"title_3" = 28,
					"headline" = 24,
					"body" = 24,
					"callout" = 23,
					"subhead" = 22,
					"footnote" = 20,
					"caption_1" = 19 - 2,
					"caption_2" = 18 - 2))

#' sf_xxLarge
sf_xxLarge_font_sizes <- list(types = list("large_title" = "regular",
				"title_1" = "regular",
				"title_2" = "regular",
				"title_3" = "regular",
				"headline" = "semi-bold",
				"body" = "regular",
				"callout" = "regular",
				"subhead" = "regular",
				"footnote" = "regular",
				"caption_1" = "regular",
				"caption_2" = "regular"),
				sizes =  list("large_title" = 46,
					"title_1" = 39,
					"title_2" = 32,
					"title_3" = 30,
					"headline" = 26,
					"body" = 26,
					"callout" = 25,
					"subhead" = 24,
					"footnote" = 22,
					"caption_1" = 21 - 2,
					"caption_2" = 20 - 2))
#' sf_xxxLarge
sf_xxxLarge_font_sizes <- list(types = list("large_title" = "regular",
				"title_1" = "regular",
				"title_2" = "regular",
				"title_3" = "regular",
				"headline" = "semi-bold",
				"body" = "regular",
				"callout" = "regular",
				"subhead" = "regular",
				"footnote" = "regular",
				"caption_1" = "regular",
				"caption_2" = "regular"),
				sizes =  list("large_title" = 48,
					"title_1" = 41,
					"title_2" = 34,
					"title_3" = 32,
					"headline" = 29,
					"body" = 29,
					"callout" = 28,
					"subhead" = 28,
					"footnote" = 24,
					"caption_1" = 23 - 2,
					"caption_2" = 22 - 2))

#'
#' @export
sf_scale <- function(size = "Large") {
    if (size == "xSmall")
    	return(sf_xSmall_font_sizes)
	if (size == "Small")
		return(sf_Small_font_sizes)
	if (size == "Medium")
		return(sf_Medium_font_sizes)
	if (size == "Large")
		return(sf_Large_font_sizes)
	if (size == "xLarge")
		return(sf_xLarge_font_sizes)
	if (size == "xxLarge")
		return(sf_xxLarge_font_sizes)
	if (size == "xxxLarge")
		return(sf_xxxLarge_font_sizes)
}
