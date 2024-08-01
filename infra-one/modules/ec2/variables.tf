variable "region" {
  type        = string
  description = "region"
  default     = "us-east-1"
}
variable "vpc_id" {
}
variable "subnet" {
}
variable "image_id" {
}
variable "env" {
}
variable "name" {
}
variable "instance_type" {
}
variable "security_groups" {
  default = {}
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}