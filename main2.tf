module "my_resource_group" {
  source = "./modules"

  resource_group_info = {
    location = "east us"
    name     = "terraform"
  }
  azure_virtualnetwork = {
    name          = "local"
    address_space = ["10.0.0.0/16"]
    location      = "east us"
  }
  azure_subnet = [{
    name             = "web-1"
    address_prefixes = ["10.0.1.0/24"]
    location         = "east us"
    }, {
    name             = "app-1"
    address_prefixes = ["10.0.2.0/24"]
    location         = "east us"
    }, {
    name             = "db-1"
    address_prefixes = ["10.0.3.0/24"]
    location         = "east us"
    }
  ]
}
