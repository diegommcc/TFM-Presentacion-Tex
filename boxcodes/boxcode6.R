## training using train set and prediction over test set
DDLSChungSmall <- trainDigitalDLSorterModel(
  object = DDLSChungSmall,
  batch.size = 128,
  num.epochs = 20,
  val = FALSE # if TRUE, a subset of data is used for evaluation during training
)