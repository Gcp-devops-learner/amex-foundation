variable "npproject_id" {
  type = string
  description = "The ID of the project where this VPC will be created"
}


variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
}

variable "service_projects" {
  type        = list(string)
  description = "The list of service project Ids to be added to host project"
}
