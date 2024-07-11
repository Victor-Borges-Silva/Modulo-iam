resource "aws_iam_policy" "Inicia_Desliga_EC2" {
  name        = var.policy_name
  description = var.policy_description
  policy      = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ec2:StartInstances",
                "ec2:StopInstances"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_role" "Inicia_Desliga_EC2" {
  name               = var.role_name
  description        = var.role_description
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": 
    [
        {
            "Sid": "",
            "Effect": "Allow",
            "Principal": {
                "Service": "lambda.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "anexar_politica_Inicia_Desliga_EC2_personalizada" {
  role       = aws_iam_role.Inicia_Desliga_EC2.name
  policy_arn = aws_iam_policy.Inicia_Desliga_EC2.arn
}

resource "aws_iam_role_policy_attachment" "anexar_politica_Inicia_Desliga_EC2_basica" {
  role       = aws_iam_role.Inicia_Desliga_EC2.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
