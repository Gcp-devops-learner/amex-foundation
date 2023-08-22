/*
Code for create Route
*/

resource "google_compute_route" "default" {
  name        = var.route_name
  description = "Route to Internet"
  dest_range  = var.route_dest_ip
  network     = local.network_name
  next_hop_gateway = "default-internet-gateway"
  priority    = var.route_priority
}