variable "sample" {
  default = 10
}

output "sample" {
  value = var.sample
}
#terraform supports String
variable "sample2" {
  default = "String should be double quotes"
}

output "sample2" {
  value = var.sample2
}

variable "sample3" {
  default = true
}

output "sample3" {
  value = var.sample3
}

variable "sample4" {
  default = [
  100,
  "abc",
  false]
}

output "sample4" {
  value = var.sample4[1]
}


variable "sample5" {
  default = {
    number = 100
    string= "xyz"
    boolean = false
  }
}

output "sample5" {
  value = var.sample5["string"]
}

variable "demo1" {}

output "demo1" {
  value = var.demo1
}

variable "demo2" {}

output "demo2" {
  value = "null"
}