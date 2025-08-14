variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  #default     = "myrg"
  
}


variable "location" {
  description = "The Azure location where the resources will be created"
  type        = string
}

variable "env" {
  description = "The environment code (e.g., DEV, PROD)"
  type        = string
  
  
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "The address space for the Virtual Network"
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
  
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the Subnet"
  type        = list(string)  
}

variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
}

variable "security_rules" {
  description = "The security rules for the Network Security Group"
  type        = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default     = []
  
}