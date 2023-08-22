
variable "sink_bucket_location" {
  description = "sink bucket location"
  type        = string
  default     = "us-central1"
}


variable "bucket_purpose" {
    type = string
    description = "Purpose of the bucket"
    default = "logging"
}

variable "car_id" {
    type = string
    description = "Amex car ID"
    default = "logging"
}

variable "env" {
    type = string
    description = "environment identifier"
    default = "d"
}



variable "bucket_coldline_age" {
    type = string
    description = "Days after which data move to coldline"
}

variable "sink_purpose" {
    type = string
    description = "Purpose of sink"
    default = "logs"
}




