#' FT Fonts.
#'
#' The \code{ft_colors} function allows the loading of FT or other fonts
#' @param font_path storing Financier and Metric font .woff files
#' @return A list of font names now available
#' @export
ft_fonts <- function(fonts_filepath = '~/.RFonts/'){
  font_financier = 'FinancierDisplayWeb'
  font_metric = 'MetricWeb'
  font_financier_bold = 'FinancierDisplayWeb-Bold'
  font_financier_regular = 'FinancierDisplayWeb-Regular'
  font_metric_semibold = 'MetricWeb-Semibold'
  font_metric_regular = 'MetricWeb-Regular'

  font_fp_financier_bold = paste0(fonts_filepath, font_financier_bold, '.woff')
  font_fp_financier_regular = paste0(fonts_filepath, font_financier_regular, '.woff')
  font_fp_metric_semibold = paste0(fonts_filepath, font_metric_semibold, '.woff')
  font_fp_metric_regular = paste0(fonts_filepath, font_metric_regular, '.woff')

  # load main FT fonts
  if(file.exists(font_fp_financier_bold) & file.exists(font_fp_financier_regular)){
    sysfonts::font_add(font_financier, regular = font_fp_financier_regular, bold = font_fp_financier_bold)
  } else {
    warning(paste0(font_financier, " fonts not found."))
  }

  if(file.exists(font_fp_metric_regular) &
                  file.exists(font_fp_metric_semibold)){
    sysfonts::font_add(font_metric, regular = font_fp_metric_regular, bold = font_fp_metric_semibold)
  } else {
    warning(paste0(font_metric, " fonts not found."))
  }

  font_names_out <- c(font_financier,
                      font_metric)

  return(font_names_out)
}
