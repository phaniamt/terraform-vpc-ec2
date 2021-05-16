output "private_ip" {
  description = "Instance private ip"
  value       = aws_instance.sonar.private_ip
}
output "public_ip" {
  description = "Instance public_ip"
  value       = aws_eip.sonar-eip.public_ip
}

output "Instance_state" {
  description = "Instance state"
  value       = aws_instance.sonar.instance_state
}
