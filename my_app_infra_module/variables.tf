variable "my_env" {
  description = "My app environment"
  type = string
}

variable "instance_type" {
  description = "value of instance type"
  type = string
}

variable "my_ami" {
  default = "value of ami"
}