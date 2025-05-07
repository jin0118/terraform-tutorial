output "instance_id" {
  description = "인스턴스 아이디"
  value = aws_instance.foo.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.foo.private_ip
}