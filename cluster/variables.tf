## General Configs ##

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "env"
} # Project name

variable "region" {
  description = "Region AWS"
  type        = string
  default     = "us-east-1"
} # Region AWS (us-east-1, us-west-2, etc)

## Variaveis com Parametros do SSM ##

variable "vpc_id" {
  type        = string
  description = "ID da VPC"
}

variable "private_subnets" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}


## Variaveis Load Balancer ##



## ECS General Configs ##


variable "capacity_providers" {
  type = list(any)
  default = [
    "FARGATE_SPOT",
    "FARGATE"

  ]
}