variable "policy_name" {
  type        = string
  default     = "Politica_de_agendamento"
  description = "Nome da politica"
}

variable "policy_description" {
  type    = string
  default = "Policy que permite o Lambda a desligar e ligar as instâncias EC2"
}

variable "role_name" {
  type        = string
  default     = "Funcao_de_agendamento"
  description = "Nome da Funcao"
}

variable "role_description" {
  type    = string
  default = "Função que permite o Lambda a desligar e ligar as instâncias EC2"
}
