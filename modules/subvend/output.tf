output "subscription_id" {
  value = azurerm_subscription.main.id
}

output "location_placement_id" {
  value       = data.azurerm_subscription.newsubscription.location_placement_id
  description = "This should be the management group ID of where the subscription has been associated"
}

output "management_group_id" {
  value       = var.management_group_id
  description = "This was the management group ID passed in and should match location_placement_id?"
}

output "connectivitysubid" {
  value = var.is_connectivity_sub ? azurerm_subscription.main.id : "[]"
}

output "subscription_name" {
  value = var.subscription_name
}

output "key" {
  value = var.key
}
