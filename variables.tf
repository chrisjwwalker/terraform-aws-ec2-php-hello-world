variable "region" {
  type        = string
  description = "The AWS region IaC will be deployed to"
  default     = "eu-west-2"
}

variable "instance_type" {
  type        = string
  description = "The size of the machine deployed into EC2"
  default     = "t2.micro"
}

variable "allowed_inbound_cidr_blocks" {
  type        = list(string)
  description = "IP address blocks that are permitted to access the EC2 instance"
}

variable "tags" {
  type        = map(string)
  description = "Set of tags associated with resources"
  default = {
    "hello" : "world"
  }
}
