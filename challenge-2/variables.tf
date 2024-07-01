variable "splunk" {
  default     = "8088"
  type        = string
  description = "port splunk will listen on."
}

variable "https_ingress_port" {
  default     = "442"
  type        = string
  description = "port from/to https ingress."
}


variable "api_ingress_port" {
  default     = "8080"
  type        = string
  description = "port from/to api ingress lower environment."
}

variable "my_ip" {
  default     = "127.0.0.1"
  type        = string
  description = "private IP address"
}

variable "prod_api_ingress_port" {
  default     = 8080
  type        = string
  description = "production api ingress"
}

variable "prod_api_egress_ip" {
  default     = "0.0.0.0"
  type        = string
  description = "production api egress"
}