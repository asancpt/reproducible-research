render:
	Rscript -e "rmarkdown::render('README.Rmd', output_format = 'github_document')"

update:
	Rscript -e "tinytex::tlmgr_update()"

