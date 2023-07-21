# Web Server 1
resource "aws_instance" "web_server_1" {
  ami               = var.ami # us-east-1
  instance_type     = var.type
  availability_zone = var.az1
  key_name          = var.key_pair
  associate_public_ip_address = true
  subnet_id = var.public_subnet1
  vpc_security_group_ids = [var.web_security_groups_id]
  tags = {
    Name = "web_server_1"
  }
}

# Database Server
resource "aws_instance" "database-server" {
  ami               = var.ami # us-east-1
  instance_type     = var.type
  availability_zone = var.az1
  key_name          = var.key_pair
  associate_public_ip_address = true
  subnet_id = var.public_subnet1
  vpc_security_group_ids = [var.web_security_groups_id]
  tags = {
    Name = "database-server"
  }
}








