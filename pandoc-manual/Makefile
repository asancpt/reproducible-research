manual:
	pandoc MANUAL.txt -o example13.pdf

manual-toc:
	pandoc -N --template=mytemplate.tex --variable mainfont="Palatino" --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=12pt --variable version=2.0 MANUAL.txt --toc -o example14.pdf
