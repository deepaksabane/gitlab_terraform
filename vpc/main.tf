terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

resource "aws_vpc" "main" {
    cidr_block = var.main_cidr
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
      Name = "main"
    }       
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main_igw"
  }
}

resource "aws_subnet" "public_subnet1a" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_subnet1a_cidr
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = true 
    tags = {
      Name = "public-subnet-1a"
    }
  
}

resource "aws_route_table" "public-route1a" {
    vpc_id = aws_vpc.main.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id

    }
    tags = {
      Name = "public-routetable_1a"
    }
  
}


resource "aws_route_table_association" "public-route1a-association" {
    subnet_id = aws_subnet.public_subnet1a.id
    route_table_id = aws_route_table.public-route1a.id
  
}

resource "aws_subnet" "public_subnet1b" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_subnet1b_cidr
    availability_zone = "ap-south-1b"
    map_public_ip_on_launch = true
    tags = {
      Name = "public-subnet-1b"
    }
  
}

resource "aws_route_table" "public-route1b" {
    vpc_id = aws_vpc.main.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id

    }
    tags = {
      Name = "public-routetable_1b"
    }
  
}

resource "aws_route_table_association" "public-route1b-association" {
    subnet_id = aws_subnet.public_subnet1b.id
    route_table_id = aws_route_table.public-route1b.id
}

resource "aws_subnet" "public_subnet1c" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_subnet1c_cidr
    availability_zone = "ap-south-1c"
    map_public_ip_on_launch = true
    tags = {
      Name = "public-subnet-1c"
    }
}

resource "aws_route_table" "public-route1c" {
    vpc_id = aws_vpc.main.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id

    }
    tags = {
      Name = "public-routetable_1c"
    }
  
}

resource "aws_route_table_association" "public-route1c-association" {
    subnet_id = aws_subnet.public_subnet1c.id
    route_table_id = aws_route_table.public-route1c.id
}




resource "aws_subnet" "private_subnet_1a" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.private_subnet1a_cidr
    availability_zone = "ap-south-1a"
    tags = {
      Name = "private-subnet-1a"
    }
}

resource "aws_route_table" "private-route-1a" {
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "private-route-table_1c"
    }

  
}

resource "aws_route_table_association" "private-route1a-association" {
    subnet_id = aws_subnet.private_subnet_1a.id
    route_table_id = aws_route_table.private-route-1a.id
  
}



resource "aws_subnet" "private_subnet_1b" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.private_subnet1b_cidr
    availability_zone = "ap-south-1b"
    tags = {
      Name = "private-subnet-1b"
    }
}

resource "aws_route_table" "private-route-1b" {
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "private-route-table_1b"
    }

  
}

resource "aws_route_table_association" "private-route1b-association" {
    subnet_id = aws_subnet.private_subnet_1b.id
    route_table_id = aws_route_table.private-route-1b.id
  
}




resource "aws_subnet" "private_subnet_1c" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.private_subnet1c_cidr
    availability_zone = "ap-south-1c"
    tags = {
      Name = "private-subnet-1c"
    }
}


resource "aws_route_table" "private-route-1c" {
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "private-route-table_1c"
    }

  
}

resource "aws_route_table_association" "private-route1c-association" {
    subnet_id = aws_subnet.private_subnet_1c.id
    route_table_id = aws_route_table.private-route-1c.id
  
}



