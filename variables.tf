variable "region" {
  description = "The AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "profile" {
  description = "The AWS profile name"
  type        = string
  default     = "arati_sdlc"
}

variable "main_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet1a_cidr" {
  description = "CIDR block for public subnet 1a"
  type        = string
}

variable "public_subnet1b_cidr" {
  description = "CIDR block for public subnet 1b"
  type        = string
}

variable "public_subnet1c_cidr" {
  description = "CIDR block for public subnet 1c"
  type        = string
}

variable "private_subnet1a_cidr" {
  description = "CIDR block for private subnet 1a"
  type        = string
}

variable "private_subnet1b_cidr" {
  description = "CIDR block for private subnet 1b"
  type        = string
}

variable "private_subnet1c_cidr" {
  description = "CIDR block for private subnet 1c"
  type        = string
}

variable "ami" {
  description = "The Amazon Machine Image ID"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  description = "The instance type"
  type        = string
  default     = "t2.micro"
}
