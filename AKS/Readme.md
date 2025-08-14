# This file is used to set variables for the AKS environment in the DEV region.
# It defines the resource group name, location, environment code, virtual network name, and address space.
# Ensure that the resource group name is unique within your Azure subscription.
# The location should match the region where you want to deploy your AKS cluster.
# The environment code is used to differentiate between different environments (e.g., DEV, PROD).
# The virtual network name and address space are used to configure the networking for the AKS cluster.
# Make sure to adjust the address space according to your network design and requirements.
# This file should be placed in the infrastructure/AKS/environment/DEV directory.
# To apply these variables, use the command:
# terraform apply -var-file=infrastructure/AKS/environment/DEV/north-europe-dev.tfvars
# Ensure that you have the necessary permissions to create resources in the specified Azure subscription and resource group.
# After applying, you can import the resource group using:
# terraform import -var-file=infrastructure/AKS/environment/DEV/north-europe-dev.tfvars azurerm_resource_group.rg /subscriptions/9f97e497-32ec