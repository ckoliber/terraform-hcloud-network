resource "hcloud_network_route" "this" {
  for_each = var.routes

  network_id  = hcloud_network.this.id
  destination = each.value.destination
  gateway     = each.value.gateway
}
