output "nonprod-ss-vpc" {
  value       = module.vpc.network_name
  description = "shared vpc  id"
}

output "nonprod-ss-vpc-link" {
  value       = module.vpc.network_self_link
  description = "shared vpc id link"
}

output "ss_vpn_gateway_e_name" {
  value       = google_compute_ha_vpn_gateway.ss_vpn_gateway_east.self_link
  description = "nonprod vpn name"
}

output "ss_vpn_gateway_c_name" {
  value       = google_compute_ha_vpn_gateway.ss_vpn_gateway_central.self_link
  description = "nonprod vpn name"
}

output "ss_router_east" {
  value       = module.ss_cloud_router1.router.id
  description = "nonprod router central name"
}

output "ss_router_central" {
  value       = module.ss_cloud_router2.router.id
  description = "nonprod router central name"
}

output "ss_router_east_name" {
  value       = module.ss_cloud_router1.router.name
  description = "nonprod router east name"
}

output "ss_router_central_name" {
  value       = module.ss_cloud_router2.router.name
  description = "nonprod router central name"
}
