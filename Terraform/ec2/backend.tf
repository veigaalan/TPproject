terraform {
  backend "azurerm" {
      resource_group_name = "Backend-tfstate"
      storage_account_name = "globantstoragemarco"
      key = "terraform.tfstate"
      container_name = "marcocontainer"
  }
}