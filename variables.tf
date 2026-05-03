variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR principal da VPC"
}

variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "Lista de CIDR's adicionais da VPC"
  default     = []
}

variable "public_subnets" {
  type = list(object({
    name = string
    cidr = string
    availability_zone = string
  }))
  description = "Lista de Public Subnets da VPC"
}

variable "private_subnets" {
  type = list(object({
    name = string
    cidr = string
    availability_zone = string
  }))
  description = "Lista de Private Subnets da VPC"
}

variable "database_subnets" {
  type = list(object({
    name = string
    cidr = string
    availability_zone = string
  }))
  default = []
  description = "Lista de Private Subnets da VPC"
}