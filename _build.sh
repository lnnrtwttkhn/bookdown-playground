#!/bin/sh

set -ev

Rscript -e "options(bookdown.render.file_scope = FALSE); bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
Rscript -e "options(bookdown.render.file_scope = FALSE); bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
Rscript -e "options(bookdown.render.file_scope = FALSE); bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
