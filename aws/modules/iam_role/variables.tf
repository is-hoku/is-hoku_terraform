variable "name" {
  type        = string
  description = "Name of IAM role and IAM policy"
}
variable "policy" {
  description = "IAM policy document"
}
variable "identifier" {
  type        = string
  description = "Identifier of AWS services to associate the IAM role with"
}
