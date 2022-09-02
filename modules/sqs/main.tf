resource "aws_sqs_queue" "queue" {
  name                      = var.sqs_name == null ? "${terraform.workspace}" : var.sqs_name
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Name =  var.sqs_name == null ? "${terraform.workspace}" : var.sqs_name
    CostCenter = terraform.workspace
  }
}
