variable "region" {
  description = "The AWS region to deploy the instance in"
  type        = string
  default     = "us-west-2"
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to deploy"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name tag for the instance"
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the instance"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "The key pair name to use for the instance"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
  default     = null
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  type        = string
  default     = null
}