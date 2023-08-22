# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

variable "prodproject_id" {
  type = string
  description = "Project Id"
}


variable "sharedproject_id" {
  type = string
  description = "Project Id"
}

/*
variable "env" {
  type = string
  description = "Environment value"
}

variable "code" {
  type = map
  default = {
    lab = "e0"
    dev = "e1"
    test = "e2"
    prod = "e3"
  }

}

variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
}

variable "prod_router_asn_code_e" {
  type        = number
  description = "ASN number of Router"
}


variable "prod_router_asn_code_c" {
  type        = number
  description = "ASN number of Router"
}


variable "shared_vpn_gateway_east" {
  type        = string
  description = "VPN GW"
}

variable "shared_vpn_gateway_central" {
  type        = string
  description = "VPN GW"
}
*/
variable "east_router_peer1_ip" {
  type        = string
  description = "east_router_peer1_ip"
}

variable "east_router_peer2_ip" {
  type        = string
  description = "east_router_peer1_ip"
}

variable "central_router_peer1_ip" {
  type        = string
  description = "east_router_peer1_ip"
}

variable "central_router_peer2_ip" {
  type        = string
  description = "east_router_peer1_ip"
}





variable "east_router_interface1_iprange" {
  type        = string
  description = "east_router_interface1_iprange"
}

variable "east_router_interface2_iprange" {
  type        = string
  description = "east_router_interface2_iprange"
}

variable "central_router_interface1_iprange" {
  type        = string
  description = "central_router_interface1_iprange"
}

variable "central_router_interface2_iprange" {
  type        = string
  description = "central_router_interface2_iprange"
}
