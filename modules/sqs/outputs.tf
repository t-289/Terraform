output "sqs_id" {
    value = aws_sqs_queue.queue.id
}

output "sqs_arn" {
    value = aws_sqs_queue.queue.arn
}