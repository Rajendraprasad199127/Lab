terraform {
  required_version = "~> 1.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.11"
    }
    tfe = {
      version = "~> 0.35"
    }
  }
}

provider "tfe" {
  hostname = var.tfe_hostname
}


provider "azurerm" {
  skip_provider_registration = "true"
  subscription_id            = var.subscription_id # This is not actually required for authorisation. However to run Terraform azurerm provider this is required. Please do not remove.
  features {}
}
