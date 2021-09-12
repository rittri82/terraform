# Terraform Output Values 

/*
# EC2 Instance Public IP
output "instance_publicip" {
  description = "EC2 Public IP"
  value       = [for instance in aws_instance.myec2vm : instance.public_ip]
}

# EC2 Instance Public DNS
output "instance_publicdns" {
  description = "EC2 Public DNS"
  value       = [for instance in aws_instance.myec2vm : instance.public_dns]
}

# EC2 Instance Public DNS using MAP
output "instance_publicdns2" {
  description = "EC2 Public DNS"
  value       = {for az,  instance in aws_instance.myec2vm :  az => instance.public_dns}
}

*/