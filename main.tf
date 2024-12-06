module "vnet" {
  source = "git::https://github.com/renato4770/Terraform_labs.git//modules/vnet?ref=v1.1"
  vnet_name = var.vnet_name
  address_space = var.address_space
  dns_servers = var.dns_servers
  rg_name = var.rg_name
  enviroments = var.enviroments
  regions = var.regions
}


resource "azurerm_subnet" "this" {
  name                 = "subnet_lab_${module.vnet.enviroments}"
  resource_group_name  = module.vnet.rg_name
  virtual_network_name = module.vnet.vnet_name
  address_prefixes     = ["10.0.1.0/24"]
}