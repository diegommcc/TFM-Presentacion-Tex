## simulation of bulk samples
DDLSChungSmall <- generateBulkSamples(
  DDLSChungSmall,
  threads = 2,
  type.data = "both",
  file.backend = "DDLS_bulk.h5" # if NULL, works in-memory
)
## preparing samples for training (train) and prediction (test)
DDLSChungSmall <- prepareDataForTraining(
  object = DDLSChungSmall,
  type.data = "both",
  combine = "bulk", # or both or single-cell
  file.backend = "DDLS_final.h5" # if NULL, works in-memory
)