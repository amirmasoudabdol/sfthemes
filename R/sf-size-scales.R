sf_xsmall_text <- function() {
  return(sf_set_text_sizes("xSmall"))
}

sf_small_text <- function() {
  return(sf_set_text_sizes("Small"))
}

sf_medium_text <- function() {
  return(sf_set_text_sizes("Medium"))
}

sf_large_text <- function() {
  return(sf_set_text_sizes("Large"))
}

sf_xlarge_text <- function() {
  return(sf_set_text_sizes("xLarge"))
}

sf_xxlarge_text <- function() {
  return(sf_set_text_sizes("xxLarge"))
}

sf_xxxlarge_text <- function() {
  return(sf_set_text_sizes("xxxLarge"))
}

# THIS DOESN'T WORK FOR NOW!
#' @export
sf_set_text_sizes <- function(ret, size_class = "xSmall") {
  font_scale <- sf_scale(size_class)

  base_size <- font_scale[["sizes"]][["body"]]  
  plot_title_size <- font_scale[["sizes"]][["title_1"]]  
  subtitle_size <- font_scale[["sizes"]][["headline"]]  
  strip_text_size <- font_scale[["sizes"]][["footnote"]]  
  caption_size <- font_scale[["sizes"]][["footnote"]]  
  axis_text_size <- font_scale[["sizes"]][["footnote"]]  
  axis_title_size <- font_scale[["sizes"]][["footnote"]]  
  
  legend_title_size <- font_scale[["sizes"]][["subhead"]]
  legend_text_size <- axis_text_size

  tag_text_size <- axis_title_size

  ret <- ret + theme(plot.title = element_text(size = plot_title_size))
  ret <- ret + theme(plot.subtitle = element_text(size = subtitle_size))
  ret <- ret + theme(plot.caption = element_text(size = caption_size))

  ret <- ret + theme(axis.title = element_text(size = axis_title_size))
  ret <- ret + theme(axis.title.x = element_text(size = axis_title_size))
  ret <- ret + theme(axis.title.y = element_text(size = axis_title_size))
  ret <- ret + theme(axis.title.y.right = element_text(size = axis_title_size))

  ret <- ret + theme(axis.text.x = element_text(size = axis_text_size))
  ret <- ret + theme(axis.text.y = element_text(size = axis_text_size))

  ret <- ret + theme(strip.text = element_text(size = strip_text_size))

  ret <- ret + theme(legend.title = element_text(size = legend_title_size))
  ret <- ret + theme(legend.text = element_text(size = legend_text_size))

  ret <- ret + theme(plot.tag = element_text(size = tag_text_size))

  return(ret)
}
