---
header-includes:
  - \usepackage{kotex}
---

Reproducible Research through LaTeX and Rmarkdown
=================================================

이 저장소는 LaTeX와 R 마크다운을 사용하여 재현가능한 연구를 구현하고자 자료를 모으는 곳입니다.
`tinytex` 패키지는 LaTeX를 좀더 쉽게 쓸 수 있게 해 줍니다.

```r
devtools::install_github('yihui/tinytex')
tinytex::install_tinytex(force=TRUE)
```

`TinyTeX installed to C:\Users\mdlhs\AppData\Roaming\TinyTeX`

예시
----

-   <https://services.math.duke.edu/computing/tex/templates.html>
-   <http://denethor.wlu.ca/latex/>

``` r
tinytex::latexmk('intro.tex')
system('convert intro.pdf intro.png')
```

![](intro-0.png) ![](intro-1.png)

