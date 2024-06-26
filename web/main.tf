resource "aws_instance" "webserver" {
    ami = var.ami  
    instance_type = var.instance_type
    subnet_id = var.public_subnet1a
    vpc_security_group_ids = [var.security_groups.id]

    tags = {
      Name = "webserver"
    }
}