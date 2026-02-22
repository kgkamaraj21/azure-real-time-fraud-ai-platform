module "rg" {
  source   = "../../modules/resource_group"
  name     = "fraud-dev-rg"
  location = "East US"
}

module "vnet" {
  source     = "../../modules/vnet"
  vnet_name  = "fraud-dev-vnet"
  location   = "East US"
  rg_name    = module.rg.name
}

module "storage" {
  source        = "../../modules/storage"
  storage_name  = "frauddevadls123"
  location      = "East US"
  rg_name       = module.rg.name
}

module "databricks" {
  source         = "../../modules/databricks"
  workspace_name = "fraud-dev-dbw"
  location       = "East US"
  rg_name        = module.rg.name
}

module "keyvault" {
  source      = "../../modules/keyvault"
  kv_name     = "fraud-dev-kv"
  location    = "East US"
  rg_name     = module.rg.name
  tenant_id   = "<YOUR_TENANT_ID>"
}
