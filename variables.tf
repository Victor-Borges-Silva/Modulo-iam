variable "policy_name" {
  type        = string
  default     = "Default_Varibletf"
  description = "Nome da politica"
}

variable "policy_description" {
  type    = string
  default = "Default_Varibletf"
}

variable "role_name" {
  type        = string
  default     = "Default_Varibletf"
  description = "Nome da Funcao"
}

variable "role_description" {
  type    = string
  default = "Default_Varibletf"
}


#IAM Role para o plano de backup
variable "nome_role_backup" {
  type        = string
  default     = "Default_TF"
  description = "Nome da role/função para permitir o AWSBackup gerenciar os pontos de restauração"
}

variable "description_role_backup" {
  type        = string
  default     = "Default_TF"
  description = "Descrição para função IAM que permite o cofre gerenciar os backups"
}
