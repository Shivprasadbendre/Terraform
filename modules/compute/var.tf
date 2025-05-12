variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "ID of the AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type"
  type        = string
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "VPC ID where the instance will be created"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be created"
  type        = string
}

variable "key_name" {
  description = "Name of the key pair to use for the instance"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the resources"
  type        = map(string)
  default     = {}
}