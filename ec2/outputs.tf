output ec2 {
  description = "EC2 instance id"
  value       = aws_instance.test-instance.id
}
