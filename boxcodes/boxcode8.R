## new SummarizedExperiment object
TCGA.breast <- SummarizedExperiment(
  assay = list(counts = TCGA.breast.small)
)
## load SE object into DigitalDLSorter object
DDLSChungSmall <- loadDeconvDataFromSummarizedExperiment(
  object = DDLSChungSmall, 
  se.object = TCGA.breast,
  name.data = "TCGA.breast"
)
## deconvolution using this data
DDLSChungSmall <- deconvDigitalDLSorterObj(
  object = DDLSChungSmall, 
  name.data = "TCGA.breast",
  normalize = TRUE
)
## see results
barPlotCellTypes(DDLSChungSmall, name.data = "TCGA.breast")