# Input Variables

# AWS Region

variable "aws_region" {
  type        = string
  default     = "ap-southeast-1"
  description = "Region in which AWS resource to be created"
}

# AWS EC2 Instance Type

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 Instance Type"
}

# AWS EC2 Instance Key Pair

variable "instance_keypair" {
  type        = string
  default     = "terraform-key"
  description = "AWS EC2 Instance Key-Pair to be associated with the VM"
}


