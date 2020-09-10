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
  proportions.train = c(10, 5, 20, 15, 10, 40),
  proportions.test = c(10, 5, 20, 15, 10, 40),
  n.cells = 100,
  n.bulk.samples = 31000
)