# Get list of availability zones in a specific region
# Availability Zones DataSource-1

data "aws_availability_zones" "my_azones" {
    filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

# To check if that respective instance type is supported in that specific region in the list of availability zones
# command to check on CLI - aws ec2 describe-instance-type-offerings --location-type availability-zone  --filters Name=instance-type,Values=c5.xlarge --region af-south-1 --output table
# Availability Zones DataSource-2

data "aws_ec2_instance_type_offerings" "my_ins_type" {

   for_each = toset(data.aws_availability_zones.my_azones.names)
  filter {
    name   = "instance-type"
    values = ["c3.large"]
  }

  filter {
    name   = "location"
    values = [each.key]
  }

  location_type = "availability-zone"
}

# Output-1 - List output with all the regions

output "output_1" {
  value = {
      for az, details in data.aws_ec2_instance_type_offerings.my_ins_type :  az => details.instance_types
  }
}

# Output-1 - List output with only regions where the instance is available
output "output_2" {
  value = {
      for az, details in data.aws_ec2_instance_type_offerings.my_ins_type : 
      az => details.instance_types if length(details.instance_types) !=0
  }
}

# Output-3 - List output with only key values of regions where the instance is available using 'keys' function
output "output_3" {
  value = keys({
      for az, details in data.aws_ec2_instance_type_offerings.my_ins_type : 
      az => details.instance_types if length(details.instance_types) !=0  })
}