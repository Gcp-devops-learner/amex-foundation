output "prod-vpc-id" {
  value       = module.vpc.network_name
  description = "prod vpc  id"
}

output "prod-vpc-link" {
  value       = module.vpc.network_self_link
  description = "prod vpc id link"
}


output "prod_vpn_gateway_e_name" {
  value       = google_compute_ha_vpn_gateway.e3_vpn_gateway_east.self_link
  description = "prod vpn name"
}

output "prod_vpn_gateway_c_name" {
  value       = google_compute_ha_vpn_gateway.e3_vpn_gateway_central.self_link
  description = "prod vpn name"
}

output "e3_router_east" {
  value       = module.cloud_router1.router.id
  description = "prod router central name"
}

output "e3_router_central" {
    value       = module.cloud_router2.router.id
    description = "prod router central name"
}

output "e3_router_east_name" {
  value       = module.cloud_router1.router.name
  description = "prod router central name"
}

output "e3_router_central_name" {
    value       = module.cloud_router2.router.name
    description = "prod router central name"
}
