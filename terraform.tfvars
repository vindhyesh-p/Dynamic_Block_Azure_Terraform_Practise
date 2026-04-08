rg_names = {
    rg1 = {
        name = "vkp_rg"
        location = "eastus"
    }
    rg2 = {
        name = "vkp_rg2"
        location = "eastus"
    }
}

vnet_names = {
    vnet1 = {
        name          = "vkp_vnet"
        location      = "eastus"
        rg_name       = "vkp_rg"
        address_space = ["10.0.0.0/16"]
    }
}   

subnet_names = {
    subnet1 = {
        name             = "subnet1"
        address_prefixes = ["10.0.1.0/24"]
    }

     subnet2 = {
        name             = "subnet2"
        address_prefixes = ["10.0.2.0/24"]
    }
}   