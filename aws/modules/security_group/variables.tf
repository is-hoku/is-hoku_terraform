variable "name" {
  type        = string
  description = "Name of security group"
}
variable "vpc_id" {
  description = "VPC ID"
}
variable "port" {
  type        = number
  description = "Port number to allow communication"
}
variable "protocol" {
  type        = string
  description = "Protocol"
}
variable "cidr_blocks" {
  type        = list(string)
  description = "CIDR block to allow communication"
}
