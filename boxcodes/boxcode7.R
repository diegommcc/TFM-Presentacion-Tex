## calculation of absolute error and squared error
DDLSChungSmall <- calculateEvalMetrics(DDLSChungSmall)
## distribution of absolute errors by cell type
distErrorPlot(
  DDLSChungSmall,
  error = "AbsErr", # or ppAbsErr, RsqrErr...
  facet.by = "CellType", # or nMix or NULL...
  color.by = "nMix", error.labels = TRUE
)
## correlation between expected and prediction
corrExpPredPlot(
  DDLSChungSmall, corr = "both", ## pearson or CCC
  facet.by = "CellType", color.by = "CellType",  
  filter.sc = FALSE
)
## Bland Altman agreement plot
blandAltmanLehPlot(
  DDLSChungSmall, facet.by = "CellType",
  color.by = "CellType",
  log.2 = TRUE, density = TRUE
)