variable "main_cidr" {
  description = "The CIDR block of the VPC"
  default     = "10.0.0.0/16"
  type        = string
}

variable "public_subnet1a_cidr" {
  description = "CIDR block for public subnet 1a"
  default     = "10.0.0.0/19"
  type        = string
}

variable "public_subnet1b_cidr" {
  description = "CIDR block for public subnet 1b"
  default     = "10.0.32.0/19"
  type        = string
}

variable "public_subnet1c_cidr" {
  description = "CIDR block for public subnet 1c"
  default     = "10.0.64.0/19"
  type        = string
}

variable "private_subnet1a_cidr" {
  description = "CIDR block for private subnet 1a"
  default     = "10.0.96.0/19"
  type        = string
}

variable "private_subnet1b_cidr" {
  description = "CIDR block for private subnet 1b"
  default     = "10.0.128.0/19"
  type        = string
}

variable "private_subnet1c_cidr" {
  description = "CIDR block for private subnet 1c"
  default     = "10.0.160.0/19"
  type        = string
}
