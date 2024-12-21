variable "project_name" {
  description = "Nome do Projeto, essa variável será utilizada para nomear os recursos criados como prefixo."

}

variable "region" {
  description = "Região AWS onde os recursos serão criados."

}

variable "cidr" {
  description = "CIDR block da VPC."
  type        = string
}

variable "availability_zones" {
  description = "Zonas de disponibilidade onde as subnets serão criadas."
  type        = list(string)
}

variable "private_subnets" {
  description = "SUbnetes privadas para comunicação entre os serviços."
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "public_subnets" {
  description = "SUbnetes publicas para comunicação entre os serviços."
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}