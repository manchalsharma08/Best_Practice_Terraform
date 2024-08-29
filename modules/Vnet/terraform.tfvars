man = {
  vnet = {
    rg_name       = "man-rg"
    location      = "westus"
    vnet_name     = "man-vnet"
    address_space = ["10.0.0.0/16"]

    alok = {

      snet1 = {
        snet_name        = "man-snet"
        address_prefixes = ["10.0.1.0/24"]
      }
      snet2 = {
        snet_name        = "man1-snet"
        address_prefixes = ["10.0.2.0/24"]
      }
      snet2 = {
        snet_name        = "AzureBastionSubnet"
        address_prefixes = ["10.0.2.0/24"]
      }

    }

  }

}