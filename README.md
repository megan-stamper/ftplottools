# ftplottools
R Package for FT ggplot graph theme, colors and fonts

Install using devtools:
```
devtools::install_github("megan-stamper/ftplottools")
```
# Fonts
The function `ft_fonts()` requires a local copy of the .woff files for two font familys: the financier font (in regular and bold) and the metric font (in regular and semibold). These can be downloaded using the developer console in Chrome from the ft.com homepage.

As default, `ftplottools` will look for fonts in the directory `~/.RFonts/`. You can pass the filepath as a parameter to `ft_fonts()` to choose a different location.
