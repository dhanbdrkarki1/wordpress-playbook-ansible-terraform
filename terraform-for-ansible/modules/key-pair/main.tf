# create private key to login to the webserver
resource "tls_private_key" "web-key" {
  algorithm   = var.algorithm_type
}

#  save public key attributes from the generated key
resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = tls_private_key.web-key.public_key_openssh
}


# save key to local file
resource "local_file" "web-test" {
  content  = tls_private_key.web-key.private_key_pem
  filename = "/home/dhan/.ssh/${var.key_filename}"
  file_permission = 0400
}
