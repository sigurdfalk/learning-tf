# Create resource group
az group create --name tfstate --location eastus

# Create storage account
az storage account create --resource-group tfstate --name tfstate71ac2932 --sku Standard_LRS --encryption-services blob

# Get storage account key
az storage account keys list --resource-group tfstate --account-name tfstate71ac2932 --query [0].value -o tsv

# Create blob container
az storage container create --name tfstate --account-name tfstate71ac2932 --account-key <account_key>
