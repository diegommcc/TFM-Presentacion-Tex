deconvResults <- deconvDigitalDLSorter(
  data = TCGA.breast.small,
  model = "breast.chung.generic",
  normalize = TRUE
)
## barplot showing results
barPlotCellTypes(deconvResults)