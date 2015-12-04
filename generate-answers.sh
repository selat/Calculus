#!/bin/sh

cp tmp-ans.tex ans.tex
cat lecture01.tex | sed -n "/\\\\begin{col-answer}/,/\\\\end{col-answer}/p" >> ans.tex
echo "\end{document}" >> ans.tex
pdflatex ans.tex
