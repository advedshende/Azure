variable "azurerm_resource_group_name" {
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