output "moodle_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.moodle.id
}

output "moodle_public_ip" {
  description = "Public IP address"
  value       = aws_instance.moodle.public_ip
}

output "moodle_url" {
  description = "Moodle access URL"
  value       = "http://${aws_instance.moodle.public_ip}"
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.moodle_sg.id
}
