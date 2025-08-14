locals {
  env_code = module.env_map.env_code[var.env]
  location_rg_map = {for g in azurerm_resource_group.rg : g.location => g.name}
}

module "env_map" {
  source = "../../modules/environment_maps"

  # loc_code     = var.loc_code
  # env_code     = var.env_code
  # vpn_base_tags = var.vpn_base_tags
  
}

module "project_tags" {
  source = "../../modules/project_tags"

  # loc_code     = var.loc_code
  # env_code     = var.env_code
  # vpn_base_tags = var.vpn_base_tags 
  
}

resource "azurerm_resource_group" "rg" {
  for_each = toset(["centralus", "eastus"])
  name     = "${module.env_map.loc_code[each.value]}-INFR-SNT-${local.env_code}-RULE-RG"
  location = var.location
  tags = merge(module.project_tags.project_tags, {
    environment = local.env_code
  })
}