
[《geocomputing with R》](https://www.amazon.com/Geocomputation-R-Robin-Lovelace/dp/0367670577) 第一版的中文翻译。

已获得原书作者的授权。经出版社同意，将[第 2 章](./地理计算与R语言-第2章.pdf)公开出来。


也可在 R 中执行以下命令，自行编译出第 2 章的 PDF 文件：

```r
install.packages("remotes")
remotes::install_github("Nowosad/spDataLarge")
remotes::install_github("rstudio/bslib")
remotes::install_github("rstudio/bookdown")

# 编译过程中可能遇到 R 包的问题，可根据错误提示解决
bookdown::render_book(".", "bookdown::pdf_book")
```

编译过程中可能会有以下警告：

> Warning: LaTeX Warning: Reference `xxx' on page xx undefined on input line xx.
Warning: LaTeX Warning: There were undefined references.

这是因为引用了其他章节的内容。而其他章节暂不方便公开，所以这些警告可以忽略。

