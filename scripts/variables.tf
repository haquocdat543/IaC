variable "dynamodb_table" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "encrypt" {
  description: "True or false"
  type = string
}

variable "region" {
  type = string
}

variable "key" {
  type = string
}

variable "bucket" {
  type = string
}

variable "profile" {
  default = "default"
  type = string
}

variable "ami_id" {
  default = "ami-098940df4d3292e9a"
  type = string
}

variable "key_pair" {
  type = string
}
