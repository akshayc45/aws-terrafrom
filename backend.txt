terraform {
  backend "azurerm" {
    resource_group_name  = "AVD-CXIO-PROD-CIN"
    storage_account_name = "cxiotfstatefile"
    container_name       = "tfstate-avd"
    key                  = "azure-tfstate/terraform.tfstate"
    #use_azuread_auth = true
    access_key      = "5Xk+jYnwaIjpYTmrNJGbxJDSZes4gcfTWMWvdqZGBPgPWNfLC5Um4SUVb3qZrG81pIxQcuJe3K0f+AStqO74Kw=="
    subscription_id = "0ddd5e1d-7a52-478d-8f60-e41daae74d90"
    tenant_id       = "b7f57af4-9b3f-4816-80b3-f0a8de8cccd0"
  }
}
