
variable "userage_cat" {
  type    = map
  default = {
    miguel = "20"
    luis   = "44"
  }
}
variable "username" {
  type = string
  default = "miguel"
}

output "user" {
  value = "my name is ${var.username} and my age is ${lookup(var.userage_cat, var.username)}"
}

