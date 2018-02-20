
test.tex
========

``` r
tinytex::pdflatex('test.tex')
system('convert test.pdf test.png')
```

![](test.png)

``` r
tinytex::pdflatex('intro.tex')
system('convert intro.pdf intro.png')
```

![](intro-0.png) ![](intro-1.png)
