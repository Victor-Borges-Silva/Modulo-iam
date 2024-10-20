# Modulo-iam
Modulo para iam Policy e roles

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.57.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.Inicia_Desliga_EC2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.Inicia_Desliga_EC2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.role_backup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.anexar_politica_Inicia_Desliga_EC2_basica](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.anexar_politica_Inicia_Desliga_EC2_personalizada](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description_role_backup"></a> [description\_role\_backup](#input\_description\_role\_backup) | Descrição para função IAM que permite o cofre gerenciar os backups | `string` | `"Default_TF"` | no |
| <a name="input_nome_role_backup"></a> [nome\_role\_backup](#input\_nome\_role\_backup) | Nome da role/função para permitir o AWSBackup gerenciar os pontos de restauração | `string` | `"Default_TF"` | no |
| <a name="input_policy_description"></a> [policy\_description](#input\_policy\_description) | n/a | `string` | `"Default_Varibletf"` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | Nome da politica | `string` | `"Default_Varibletf"` | no |
| <a name="input_role_description"></a> [role\_description](#input\_role\_description) | n/a | `string` | `"Default_Varibletf"` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Nome da Funcao | `string` | `"Default_Varibletf"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_role_arn_backup"></a> [iam\_role\_arn\_backup](#output\_iam\_role\_arn\_backup) | n/a |
| <a name="output_iam_role_arn_ec2"></a> [iam\_role\_arn\_ec2](#output\_iam\_role\_arn\_ec2) | n/a |
<!-- END_TF_DOCS -->