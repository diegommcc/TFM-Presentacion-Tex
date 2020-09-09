## data.frame with prior information about cell types
probMatrix <- data.frame(
  Cell_types = c("ER+", "HER2+", "ER+ and HER2+", "TNBC", 
                  "Stromal", "Monocyte", "TCD4me", "BGC", 
                  "Bmem", "DC", "Macrophage", "TCD8", "TCD4reg"),
  from = c(rep(30, 4), 1, rep(0, 8)), 
  to = c(rep(70, 4), 50, rep(15, 8))
)
DDLSChungSmall <- generateTrainAndTestBulkProbMatrix(
  object = DDLSChungSmall,
  cell.type.column = "Cell_type",
  prob.design = probMatrix,
  n.bulk.samples = 200 # 30000 in real situations
)