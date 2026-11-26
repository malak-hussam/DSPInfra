variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "my_ip" {
  description = "Your public IP in CIDR form, e.g. 41.x.x.x/32"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}