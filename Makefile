github_doc:
	Rscript -e "rmarkdown::render('README.Rmd', output_format = 'github_document', encoding = 'UTF-8')"

update:
	Rscript -e "tinytex::tlmgr_update()"
