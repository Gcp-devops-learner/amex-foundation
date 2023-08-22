/*
output "prod-vpc-id" {
  value       = module.shared_vpc.network_name
  description = "prod vpc  id"
}

output "prod-vpc-link" {
  value       = module.shared_vpc.network_self_link
  description = "prod vpc id link"
}


output "prod_vpn_gateway_e_name" {
  value       = google_compute_ha_vpn_gateway.prod_vpn_gateway_east.self_link
  description = "prod vpn name"
}

output "prod_vpn_gateway_c_name" {
  value       = google_compute_ha_vpn_gateway.prod_vpn_gateway_central.self_link
  description = "prod vpn name"
}
*/