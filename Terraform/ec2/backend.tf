terraform {
  backend "azurerm" {
      resource_group_name = "backend-tfstate"
      storage_account_name = "backend-tfstate-storage-account"
      key = "terraform.tfstate"
      container_name = "backend-tfstate-container"
  }
}