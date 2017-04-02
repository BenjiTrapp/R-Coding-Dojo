#!/usr/bin/env Rscript --vanilla

# Render files in /presentation to HTML slidy presentations
# The output folder is 'dist'

library(rmarkdown)

kDistFolder <- 'dist'
kSrcFolder <- 'presentation'
kRmdPattern <- '\\.Rmd$'
rmdFiles <- list.files(path = kSrcFolder, include.dirs = FALSE, full.names = TRUE, pattern = kRmdPattern)

RenderRmdPresentation <- function(path, outputDir = kDistFolder) {
  rmarkdown::render(path, clean = TRUE, output_dir = outputDir, slidy_presentation())
}

Map(RenderRmdPresentation, rmdFiles)
