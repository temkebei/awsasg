variable "region" {
  description = "Region where the ASG to be provisioned"
  type = string
  default = "us-east-1"
    
}
variable "name" {
  description = "Name of the ASG"
  type = string
    
}

variable "ami" {
  description = "AMI ID for the server"
  type = string
    
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "The instance type of the EC2 to be launched by the ASG"
  type        = string
    
}

variable "security_group_ids" {
  description = "The security groups to be added for the ASG server"
  type = list(string)
    
}

variable "desired_capacity" {
  description = "The desired capacity to be set for the ASG group"
  type = number
  default = 1
    
}

variable "max_size" {
  description = "The maximum size of the ASG group"
  type = number
  default = 1 
}

variable "min_size" {
  description = "The minimum size of the ASG group"
  type = number
  default = 1
}

variable "subnet_id" {
  description = "The subnet id in which the ASG servers to be launched"
  type = list(string)
}

variable "target_group_arns" {
  description = "The target group that ASG instance needs to be added"
  type = list(string)
  default = []
}