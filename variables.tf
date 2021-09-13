variable "region" {
  type        = string
  description = "The AWS region IaC will be deployed to"
}

variable "instance_type" {
  type        = string
  description = "The size of the machine deployed into EC2"
}

variable "tags" {
  type        = map(string)
  description = "Set of tags associated with resources"
}
