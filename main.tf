resource "aws_iam_policy" "politica_agendamento_ec2" {
  name        = var.policy_name
  description = var.policy_description
  policy      = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {           
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogGroup",
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Resource": "arn:aws:logs:*:*:*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ec2:Start*",
                "ec2:Stop*"              
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_role" "função_agendamento_ec2" {
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

resource "aws_iam_role_policy_attachment" "anexar_função_politica_de_agendamento_iam" {
  role       = aws_iam_role.função_agendamento_ec2.name
  policy_arn = aws_iam_policy.politica_agendamento_ec2.arn
}