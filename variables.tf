variable "name" {
  default = "zentest.space"
}

variable "region" {
  default = "ap-south-1"
}

variable "azs" {
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  type    = "list"
}

variable "env" {
  default = "staging"
}

variable "vpc_cidr" {
  default = "10.20.0.0/16"
}
