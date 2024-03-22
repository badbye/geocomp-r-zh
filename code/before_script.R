library(methods)

knitr::opts_chunk$set(
        background = "#FCFCFC", # code chunk color in latex
        comment = "#>",
        collapse = TRUE,
        cache = TRUE,
        fig.pos = "t",
        fig.path = "figures/",
        fig.align = 'center',
        fig.width = 6,
        fig.asp = 0.618,  # 1 / phi
        fig.show = "hold"
)

set.seed(2017)
options(digits = 3)
options(dplyr.print_min = 4, dplyr.print_max = 4)

is_html <- knitr::is_html_output()
is_latex <- knitr::is_latex_output()
escape_caption <- function(caption) {
        ifelse(knitr::is_latex_output(), knitr:::escape_latex(caption), caption)
}
windowsFont = 'song'; linuxFont = 'monaco'; macOSFont = 'STHeiti'
osType = as.character(Sys.info()["sysname"])
baseFont = ifelse(osType == 'Darwin', macOSFont,
                ifelse(osType == 'Linux', linuxFont, windowsFont))