
/**********************************
Making Gateways & Routers
**********************************/
/*
#For VPN Gateway for East Region
resource "google_compute_ha_vpn_gateway" "nonprod_e0_vpn_gateway_east" {
  region     = "us-east4"
  name       = "nonprod-e0-vpn-gw-east"
  project    = var.npproject_id
  network    = module.vpc.network_name
  depends_on = [module.vpc.network_name]
}

#For VPN Gateway for Central Region
resource "google_compute_ha_vpn_gateway" "nonprod_e0_vpn_gateway_central" {
  region     = "us-central1"
  name       = "nonprod-e0-vpn-gw-central"
  project    = var.npproject_id
  network    = module.vpc.network_name
  depends_on = [module.vpc.network_name]
}
*/