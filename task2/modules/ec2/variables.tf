#################
# vars for nginx
#################
variable "ami" {
  type        = string
}

variable "associate_public_ip_address" {
  type        = bool
  default     = false
}

variable "availability_zone" {
  type        = string
  default     = null
}

variable "instance_type" {
  type        = string
  default     = null
}
variable "subnet_id" {
  type        = string
  default     = null
}
variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to all resources"
  type        = map(string)
  default     = {}
}

variable "user_data" {
  type        = string
  default     = null
}