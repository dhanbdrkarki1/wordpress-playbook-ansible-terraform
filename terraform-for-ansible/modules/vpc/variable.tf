# vpc
variable "web_vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "web_vpc_tenancy" {
  default = "default"
}

variable "web_vpc_tags" {
    default = "web-vpc"
}


# subnet 1
variable "public_sid1"{
    default = "10.0.1.0/24"
}

variable "public_sid1_name"{
    default = "public-subnet-1"
}

# subnet 2
variable "public_sid2"{
    default = "10.0.2.0/24"
}

variable "public_sid2_name"{
    default = "public-subnet-2"
}

# subnet 3
variable "private_sid1"{
    default = "10.0.3.0/24"
}

variable "private_sid1_name"{
    default = "private-subnet-1"
}

# subnet 4
variable "private_sid2" {
  default =  "10.0.4.0/24"
}

variable "private_sid2_name"{
    default = "private-subnet-2"
}

variable "az1" {
    default = "us-east-2a"
}

variable "az2" {
  default = "us-east-2b"
}


# subnet for public cidr blocks
# variable "public_subnet_cidr_blocks" {
#   description = "CIDR blocks for the subnets"
#   default     = ["10.0.1.0/24", "10.0.2.0/24"]
# }