variable "npproject_id" {
  description = "Project id of the project that holds the network."
}

variable "route_name" {
  type = string
  description = "Name of the route"
}

variable "route_priority" {
  type = string
  description = "Priority is used to break ties when there is more than one matching route of maximum length"
}


variable "route_dest_ip" {
    type = string
    description = "The destination IP range that this route applies to. If the destination IP of a packet falls in this range, it matches this route."
}

variable "rules" {
  description = "List of custom rule definitions (refer to variables file for syntax)."
  default     = []
  type = list(object({
    name                    = string
    description             = string
    direction               = string
    priority                = number
    ranges                  = list(string)
    source_tags             = list(string)
    source_service_accounts = list(string)
    target_tags             = list(string)
    target_service_accounts = list(string)
    allow = list(object({
      protocol = string
      ports    = list(string)
    }))
    deny = list(object({
      protocol = string
      ports    = list(string)
    }))
    log_config = object({
      metadata = string
    })
  }))
}

variable "service_projects" {
  type        = list(string)
  description = "The list of service project Ids to be added to host project"
}