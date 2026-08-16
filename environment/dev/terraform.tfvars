rgs = {
  rg1 = {
    name     = "pagalwa-rg1"
    location = "centralindia"
  }
  rg2 = {
    name     = "pagalwa-rg2"
    location = "centralindia"
  }
  rg3 = {
    name     = "pagalwa-rg3"
    location = "centralindia"
  }
  rg4 = {
    name     = "pagalwa-rg4"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name                = "pagalwa-vnet1"
    location            = "centralindia"
    resource_group_name = "pagalwa-rg2"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  snet1 = {
    name                 = "pagalwa-subnet1"
    resource_group_name  = "pagalwa-rg2"
    virtual_network_name = "pagalwa-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}