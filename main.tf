module "vnetlab" {
  source  = "app.terraform.io/lab01_ra/vnetlab/azure"
  version = "0.0.2"
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