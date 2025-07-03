resource "hcloud_network_subnet" "this" {
  for_each = var.subnets

  network_zone = var.zone
  network_id   = hcloud_network.this.id
  type         = each.value.type
  ip_range     = each.value.cidr
  vswitch_id   = each.value.vswitch
}
