variable "web_sg_name" {
    type = string
    default = "allow_web_traffic"
    description = "Name of Web Security Group"

}
variable "db_sg_name" {
    type = string
    default = "DB-sg"
    description = "Name of Database Security Group"
}

variable "lb_sg_name" {
    # type = string
    default = "load-balancer-sg"
    description = "Name of Database Security Group"
}

variable "efs_sg_name" {
    type = string
    default = "EFS Mount Target"
    description = "Name of EFS Security Group"
}

variable "vpc_id" {

}