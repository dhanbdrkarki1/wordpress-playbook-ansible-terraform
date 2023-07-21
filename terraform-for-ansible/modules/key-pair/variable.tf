variable "algorithm_type" {
    default = "RSA"
    description = "Name of Algorithm"
}

variable "key_name" {
    default = "web-test"
    description = "Name of Key-Pair"
}

variable "key_filename" {
  default = "web-test.pem"
  description = "Name of Key-Pair file"
}