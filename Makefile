github_doc:
	Rscript -e "rmarkdown::render('README.Rmd', output_format = 'github_document', encoding = 'UTF-8')"

update:
	Rscript -e "tinytex::tlmgr_update()"

pandoc-xelatex:
	pandoc README.md -o README.pdf --latex-engine=xelatex

pandoc:
	pandoc README.md -o README.pdf 


latexmk:
	Rscript -e "tinytex::latexmk('intro.tex')"

