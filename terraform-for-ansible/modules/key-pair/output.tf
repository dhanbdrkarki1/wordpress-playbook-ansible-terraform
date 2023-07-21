output "private_key" {
  value = tls_private_key.web-key.private_key_pem
}

output "key_name" {
  value = aws_key_pair.deployer.key_name
}