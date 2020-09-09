DDLSChungSmall <- loadRealSCProfiles(
  ## SingleCellExperiment object
  single.cell.real = sc.chung.breast, 
  cell.ID.column = "Cell_ID", 
  gene.ID.column = "external_gene_name",
  min.cells = 1, 
  min.counts = 1,
  project = "Chung_example"
)