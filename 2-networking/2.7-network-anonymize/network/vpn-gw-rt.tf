
/**********************************
Making Gateways & Routers
**********************************/

#For VPN Gateway for East Region
resource "google_compute_ha_vpn_gateway" "nonprod_anon_vpn_gateway_east" {
  region   = "us-east4"
  name     = "nonprod-anon-vpn-gw-east"
  project = var.anon_project_id
  network  =   module.vpc.network_name
  depends_on = [module.vpc.network_name]
}

#For VPN Gateway for Central Region
resource "google_compute_ha_vpn_gateway" "nonprod_anon_vpn_gateway_central" {
  region   = "us-central1"
  name     = "nonprod-anon-vpn-gw-central"
  project = var.anon_project_id
  network  = module.vpc.network_name
  depends_on = [module.vpc.network_name]
}
