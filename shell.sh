# Set variables
RESOURCE_GROUP="tf-backend-rg"
STORAGE_ACCOUNT="tfstudyntback$RANDOM"
CONTAINER_NAME="tfstate"

# Create resource group
az group create --name $RESOURCE_GROUP --location eastus

# Create storage account
az storage account create --name $STORAGE_ACCOUNT --resource-group $RESOURCE_GROUP --location eastus --sku Standard_LRS

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT