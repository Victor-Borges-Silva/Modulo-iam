terraform {
  #  backend "s3" {
  #    bucket         = "descomplicando-terraform-turma-2024" #nome do bucket
  #    key            = "aula_backend"
  #    region         = "us-east-1"
  #  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-1"
}

#Pode ser usado para criar recursos em diferentes região/contas, gerando alta disponibilidade. 
#provider "aws" {           
#  alias  = "west"
#  region = "us-west-2"
#}