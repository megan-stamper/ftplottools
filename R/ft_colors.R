#' FT Colour Palettes.
#'
#' The \code{ft_colors} function returns a different ft color palettes to use in your graphs.
#' @param palette A string.
#' @return A vector of colour hex codes
#' @examples
#' ft_colors("paired")
#' ft_colors()
ft_colors <- function(palette = "main"){
  if(!length(palette) == 1){
    stop("Input must be string of palette name")
  }
  main <- c("#9e2f50","#ff7f8a","#3a70af","#f6801a","#2bbbbf","#410057","#505050","#99c6fb","#27757b","#8b572a")
  greys <- c("#b0b0b0","#999999","#777777","#505050","#333333","#000000")
  reds <- c("#ebbcb3","#df9c92","#d17c70","#c36256","#b1493f","#9e2f50")
  blues <- c("#bcd7e5","#a9cadc","#8ab5cd","#75a5c2","#598caf","2e6e9e")
  paired <- c("#9e2f50","#ff7f8a","#3a70af","#99c6fb","#c85f04","#f29d53","#27757b","2bbbbf","#410057","#f3dee3")
  pal_out <- switch(palette,
                    main = main,
                    greys = greys,
                    redds = reds,
                    blues = blues,
                    paired = paired)
  if(length(pal_out) == 0){
    stop("Palette not found")
  }
  return(pal_out)
}
