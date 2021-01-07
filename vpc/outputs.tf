output subnet {
  description = "Created subnet for EC2 instances"
  value       = aws_subnet.test-subnet.id
}
