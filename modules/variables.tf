variable "resource_group_info" {
  type = object({
     name = string
    location = string
  })
}

variable "azure_virtualnetwork" {
  type = object({
    name = string
   address_space = list(string)
    location = string
  })
}


variable "azure_subnet" {
  type = list(object({
    name  = string
    address_prefixes = list(string) 
  }))
}