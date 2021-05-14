# AWS SQS Output
output "sqs_queue_arn" {
  description = "ARN of sqs_queue"
  value       = aws_sqs_queue.sqs_queue.arn
}

output "queue_name" {
  description = "Name of sqs_queue"
  value       = local.name
}

output "sqs_queue_url" {
  description = "URL of sqs_queue"
  value       = aws_sqs_queue.sqs_queue.id
}
# AWS DLQ SQS Output
output "sqs_queue_deadletter_arn" {
  description = "ARN of sqs_queue_deadletter"
  value       = aws_sqs_queue.sqs_queue_deadletter.arn
}

output "sqs_queue_deadletter_url" {
  description = "URL of sqs_queue_deadletter"
  value       = aws_sqs_queue.sqs_queue_deadletter.id
}

output "dlq_queue_name" {
  description = "Name of sqs_queue"
  value       = "${local.name}-deadletter"
}
