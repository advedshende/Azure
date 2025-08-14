variable "loc_code" {
  type        = map(string) 
  default     = {
    "centralus" = "Central US",
    "eastus"    = "East US",
    "westus"    = "West US",
    "eastus2"   = "East US 2",
    "westus2"   = "West US 2",
    "southcentralus" = "South Central US",
    "northcentralus" = "North Central US"
  }
  
}

variable "env_code" {
  type = map(string)
    default = {
    "DEV"  = "Development",
    "TEST" = "Testing", 
    "PROD" = "Production"
    }
}

variable "vpn_base_tags" {
  type = map(string)
  default = {
    "environment" = "DEV",
    "owner"       = "prakash",
    "project"     = "DCR"
  } 
  
}