resource "vpc_security_group_ids" "sg" {
    vpc_id = aws_vpc.main.id
    name = "my_security_group"
    description = "public-security"
    tags = {
        Name = "mysecurity"
    }

    dynamic "ingress" {
        for_each = {
            tcp_22 = {
                from_port = 22
                to_port   = 22
                protocol  = "tcp"
                cidr_blocks = [
                   "10.0.0.0/8", 
                   "10.0.0.0/16",
                   "0.0.0.0/0"
                ]
            },
            tcp_443 = {
                from_port = 443
                to_port   = 443
                protocol  = "tcp"
                cidr_blocks = [
                    "10.0.0.0/8", 
                    "10.0.0.0/16",
                ]
            },
            tcp_80 = {
                from_port = 80
                to_port   = 80
                protocol  = "tcp"
                cidr_blocks = [
                    "0.0.0.0/0"
                ]
            }
            
        }

        content {
            from_port   = ingress.value.from_port
            to_port     = ingress.value.to_port
            protocol    = ingress.value.protocol
            cidr_blocks = ingress.value.cidr_blocks
        }
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}
