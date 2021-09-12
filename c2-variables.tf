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

# AWS EC2 Instance Type - List

variable "instance_type_list" {
  description = "EC2 Instance Type"
  type        = list(string)
  default     = ["t2.micro", "t2.small"]
  
}

# AWS EC2 Instance Type - Map

variable "instance_type_map" {
  description = "EC2 Instance Type"
  type        = map(string)
  default     = {
    "dev" = "t2.small"
    "prod" = "t2.micro"
  }
  
}

