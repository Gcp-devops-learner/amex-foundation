
/**********************************
Making Gateways
**********************************/

#For VPN Gateway for East Region
resource "google_compute_ha_vpn_gateway" "e3_vpn_gateway_east" {
  region   = "us-east4"
  name     = "prod-e3-vpn-gw-east"
  project  =  var.prodproject_id
  network  = module.vpc.network_name
  depends_on = [module.vpc.network_name]
}

#For VPN Gateway for Central Region
resource "google_compute_ha_vpn_gateway" "e3_vpn_gateway_central" {
  region   = "us-central1"
  name     = "prod-e3-vpn-gw-central"
  project  =  var.prodproject_id
  network  = module.vpc.network_name
  depends_on = [module.vpc.network_name]
}