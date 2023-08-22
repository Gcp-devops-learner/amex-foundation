
/**********************************
Making Gateways & Routers
**********************************/

#For VPN Gateway for East Region
resource "google_compute_ha_vpn_gateway" "ss_vpn_gateway_east" {
  region     = "us-east4"
  name       = "ss-vpn-gw-east"
  project    = var.sharedproject_id
  network    = module.vpc.network_name
  depends_on = [module.vpc.network_name]
}

#For VPN Gateway for Central Region
resource "google_compute_ha_vpn_gateway" "ss_vpn_gateway_central" {
  region     = "us-central1"
  name       = "ss-vpn-gw-central"
  project    = var.sharedproject_id
  network    = module.vpc.network_name
  depends_on = [module.vpc.network_name]
}