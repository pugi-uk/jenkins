variable "env" {
    description = "Environment short name"
    type        = string
    default     = "dev"    
}

variable "service" {
    description = "Service Name"
    type        = string
    default     = "dmsterra"    
}

locals {
    name        = "${var.env}-${var.service}"
}

