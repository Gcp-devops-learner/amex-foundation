
variable "npproject_id" {
  description = "The ID of the project where this VPC will be created"
}

variable "vpc_name" {
  type = string
}

variable "shared_vpc_host" {
  type        = bool
  description = "Makes this project a Shared VPC host if 'true' (default 'false')"
  default     = true
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  default     = false
}

variable "description" {
  type        = string
  description = "An optional description of this resource. The resource must be recreated to modify this field."
  default     = ""
}

variable "routing_mode" {
  type        = string
  default     = "GLOBAL"
  description = "The network routing mode (default 'GLOBAL')"
}

variable "delete_default_internet_gw" {
  type        = bool
  description = "If set, ensure that all routes within the network specified whose names begin with 'default-route' and with a next hop of 'default-internet-gateway' are deleted"
  default     = true
}

variable "mtu" {
  type        = number
  description = "The network MTU. Must be a value between 1460 and 1500 inclusive. If set to 0 (meaning MTU is unset), the network will default to 1460 automatically."
  default     = 0
}
/*
variable "e0_router_east_asn" {
  type = string
}

variable "e0_router_central_asn" {
  type = string
  
}

variable "e0_east_cloud_router_name" {
  type = string
  
}

variable "e0_central_cloud_router_name" {
  type = string
  
}

variable "region1" {
  type = string
}

variable "region2" {
  type = string
}
*/
variable "service_projects" {
  type        = list(string)
  description = "The list of service project Ids to be added to host project"
}









