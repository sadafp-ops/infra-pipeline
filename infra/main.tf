module "rg" {
  source   = "./modules/resource-group"
  name     = var.rg_name
  location = var.location

}

module "network" {
  source    = "./modules/network"
  rg_name   = module.rg.name
  location  = var.location
  vnet_cidr = var.vnet_cidr
}
module "storage" {
  source   = "./modules/storage"
  rg_name  = module.rg.name
  location = var.location
}
module "compute" {
  source    = "./modules/compute"
  rg_name   = module.rg.name
  subnet_id = module.network.subnet_id
  location  = var.location
}
module "security" {
  source   = "./modules/security"
  rg_name  = module.rg.name
  location = var.location

}