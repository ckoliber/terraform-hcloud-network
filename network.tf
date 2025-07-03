resource "hcloud_network" "this" {
  name                     = var.name
  ip_range                 = var.cidr
  labels                   = var.labels
  delete_protection        = var.protection
  expose_routes_to_vswitch = var.expose_vswitch
}
