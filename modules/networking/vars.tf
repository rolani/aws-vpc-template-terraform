variable "AWS_ACCESS_KEY_ID" {
  type    = string
}
variable "AWS_SECRET_ACCESS_KEY" {
  type    = string
}

variable "region" {
  type    = string
  default = "us-east-2"
}
variable "vpc_cidr" {
  description = "CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Public subnet"
}

variable "private_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for private subnet"
}

variable "private_availability_zones" {
  type        = list(any)
  description = "subnet private availability zone"
}

variable "public_availability_zones" {
  type        = list(any)
  description = "subnet public availability zone"
}

variable "environment" {
  type        = string
  description = "The environment we are building for."
}


