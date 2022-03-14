# creates app service plan
resource "azurerm_app_service_plan" "asp" {
  name                = var.app_service_plan
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "app" {
  name                = var.app_service
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    linux_fx_version          = "DOTNETCORE|6.0"
    remote_debugging_enabled  = false
    http2_enabled             = false
    always_on                 = false
    use_32_bit_worker_process = true
  }
}
