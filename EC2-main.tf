# Resource-7: Creat Security Group for Web Server
resource "aws_security_group" "project-SG" {
  name        = "project-SG"
  description = "Allow All traffic"
  vpc_id      = aws_vpc.Project-1-VPC.id

  ingress    {
      description      = "All traffic"
      from_port         = 0
      to_port           = 65535
      protocol          = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }

  egress     {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }

  tags = {
    Name = "project-SG"
  }
}

# Resource-8: Creat Ubuntu 18.04
resource "aws_instance" "Master-VM" {
  ami           = "ami-0a59f0e26c55590e9"
  instance_type = "t2.medium"
  key_name      = "XXXXXXXXXXX"
  subnet_id     = aws_subnet.Project-1-VPC-Pub-sbn.id
  vpc_security_group_ids = [aws_security_group.project-SG.id]

  tags = {
    Name = "Master-VM"
  }
}


# Resource-9: Create Ubuntu 18.04 Server
resource "aws_instance" "Worker-1" {
  ami           = "ami-0a59f0e26c55590e9"
  instance_type = "t2.medium"
  key_name      = "XXXXXXXXXXXX"
  subnet_id     = aws_subnet.Project-1-VPC-Pub-sbn.id
  vpc_security_group_ids = [aws_security_group.project-SG.id]

  tags = {
    Name = "Worker-1"
  }
}


# Resource-10: Create Ubuntu 18.04
resource "aws_instance" "Worker-2" {
  ami           = "ami-0a59f0e26c55590e9"
  instance_type = "t2.medium"
  key_name      = "XXXXXXXXXXX"
  subnet_id     = aws_subnet.Project-1-VPC-Pub-sbn.id
  vpc_security_group_ids = [aws_security_group.project-SG.id]

  tags = {
    Name = "Worker-2"
  }
}


