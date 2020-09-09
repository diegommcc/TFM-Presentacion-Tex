## estimation of ZINB-WaVE parameters
DDLSChungSmall <- estimateZinbwaveParams(
  object = DDLSChungSmall,
  cell.ID.column = "Cell_ID",
  gene.ID.column = "external_gene_name",
  cell.type.column = "Cell_type",
  cell.cov.columns = "Patient",
  gene.cov.columns = "gene_length"
)
## simulation of new profiles
DDLSChungSmall <- simSingleCellProfiles(
  object = DDLSChungSmall,
  cell.ID.column = "Cell_ID",
  cell.type.column = "Cell_type",
  n.cells = 10 # 1000 in real situations
)