# Terraform Output Values 

# For loop with List
output "for_output_list" {
  description = "For Loop with List"
  value       = [for instance in aws_instance.myec2vm: instance.public_dns]
}

# For loop with Map
output "for_output_map1" {
  description = "For Loop with Map1"
  value       = {for instance in aws_instance.myec2vm: instance.id => instance.public_dns}
}

# For loop with Map Advanced
output "for_output_map2" {
  description = "For Loop with Map2"
  value       = {for c, in aws_instance.myec2vm: c => instance.public_dns}
}

# Output with legacy splat operator
output "legacy_output_splat" {
  description = "Legacy Splat Operator"
  value       = aws_instance.myec2vm.*.public_dns
}

# Output with new splat operator
output "new_output_splat" {
  description = "New Splat Operator"
  value       = aws_instance.myec2vm[*].public_dns
}