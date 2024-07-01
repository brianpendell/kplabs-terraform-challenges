variable "splunk" {
  default = "8088"
  type = string
  description = "port splunk will listen on."
}

variable "https_ingress_port" {
 default = "442"
  type = string
  description = "port from/to https ingress."
} 


variable "http_ingress_port" {
 default = "8080"
  type = string
  description = "port from/to http ingress."
} 

variable "my_ip" { 
  default = "127.0.0.1"
  type = string
  description = "private IP address"
}

variable "api_ingress_port" { 
  default= 8080 
  type = string
  description = "api ingress"
}

variable "api_egress_ip"  {
  default = "0.0.0.0"
  type = string
  description = "api egress"  
}