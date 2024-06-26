variable "ami" {
    description = "The amazon machine image "
    default = "ami-0f58b397bc5c1f2e8"
  
}
variable "instance_type" {
    description = "The instnace type"
    default = "t2.micro"
  
}

variable "security_groups" {
    description = "Taking the value from vpc module"
  
}

variable "public_subnet1a" {
    description = "Taking the value from vpc module"

  
}