output "nonprod-e0-vpc" {
  value       = module.vpc.network_name
  description = "shared vpc  id"
}

output "nonprod-e0-vpc-link" {
  value       = module.vpc.network_self_link
  description = "shared vpc id link"
}

/*
output "nonprod_vpn_gateway_e_name" {
  value       = google_compute_ha_vpn_gateway.nonprod_e0_vpn_gateway_east.self_link
  description = "nonprod vpn name"
}

output "nonprod_vpn_gateway_c_name" {
  value       = google_compute_ha_vpn_gateway.nonprod_e0_vpn_gateway_central.self_link
  description = "nonprod vpn name"
}

output "nonprod_router_east" {
  value       = module.east_cloud_router.router.id
  description = "nonprod router east name"
}

/*
output "nonprod_router_central" {
  value       = module.central_cloud_router.router.id
  description = "nonprod router central name"
}

output "nonprod_router_east_name" {
  value       = module.east_cloud_router.router.name
  description = "nonprod router east name"
}

output "nonprod_router_central_name" {
  value       = module.central_cloud_router.router.name
  description = "nonprod router central name"
}
*/