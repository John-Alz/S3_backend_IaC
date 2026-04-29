variable "region" {
  type    = string
  default = "us-east-1"
}

variable "backend_bucket_name" {
  type = string
}

variable "dynamo_table_name" {
  type = string
}

variable "modulo_bucket_name" {
  type = string
}