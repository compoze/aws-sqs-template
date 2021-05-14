terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "test-org-compoze"
  }
}

resource "aws_sqs_queue" "sqs_queue" {
  name                      = local.name
  delay_seconds             = 1
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 1
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.sqs_queue_deadletter.arn
    maxReceiveCount     = 4
  })

  tags = local.common_tags
}

resource "aws_sqs_queue" "sqs_queue_deadletter" {
  name                      = "${local.name}-deadletter"
  delay_seconds             = 10
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 5

  tags = local.common_tags

}
