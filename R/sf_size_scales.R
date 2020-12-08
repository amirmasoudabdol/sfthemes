sf_xSmall_text <- function() {
	return(sf_set_text_sizes("xSmall"))
}

sf_Small_text <- function() {
	return(sf_set_text_sizes("Small"))
}

sf_Medium_text <- function() {
	return(sf_set_text_sizes("Medium"))
}

sf_Large_text <- function() {
	return(sf_set_text_sizes("Large"))
}

sf_xLarge_text <- function() {
	return(sf_set_text_sizes("xLarge"))
}

sf_xxLarge_text <- function() {
	return(sf_set_text_sizes("xxLarge"))
}

sf_xxxLarge_text <- function() {
	return(sf_set_text_sizes("xxxLarge"))
}

#' Typography
#'
#' @description
#' Set text sizes of different elements of a plot
#'
#' @details
#' SFthemes offers a set of scale sizes to adjust the overall
#' size of different elements. This includes text as well as 
#' graphical elements.
#'
#' @param size	Indicates the size class of the elements
#'
#' @rdname sf_typography
#' @export
#' @importFrom ggplot2 element_text
sf_set_text_sizes <- function(size = "xSmall") {
	font_scale <- sf_scale(size);
	# base_size <- font_scale[['sizes']][['body']]
	plot_title_size <- font_scale[['sizes']][['headline']]
	subtitle_size <- font_scale[['sizes']][['subhead']]
	strip_text_size <- font_scale[['sizes']][['footnote']]
	caption_size <- font_scale[['sizes']][['caption_1']]
	axis_text_size <- font_scale[['sizes']][['caption_1']]
	axis_title_size <- font_scale[['sizes']][['caption_1']]

	# - [ ] TODO: Add the font-weight to eqxh items as well
	ret <- theme()
	ret <- ret + theme(axis.text.x = element_text(size = axis_text_size))
	ret <- ret + theme(axis.text.y = element_text(size = axis_text_size))
	ret <- ret + theme(axis.title = element_text(size = axis_title_size))

	ret <- ret + theme(axis.title.x = element_text(size = axis_title_size))
	ret <- ret + theme(axis.title.y = element_text(size = axis_title_size))
	ret <- ret + theme(axis.title.y.right = element_text(size = axis_title_size))
	ret <- ret + theme(strip.text = element_text(size = strip_text_size))
	ret <- ret + theme(plot.title = element_text(size = plot_title_size))
	ret <- ret + theme(plot.subtitle = element_text(size = subtitle_size))
	ret <- ret + theme(plot.caption = element_text(size = caption_size))

    return(ret)
}
