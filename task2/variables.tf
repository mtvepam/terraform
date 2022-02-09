#################
# vars for RDS
#################
variable "identifier" {
  type        = string
}
variable "name" {
  type        = string
  default     = null
}
variable "username" {
  type        = string
}
variable "password" {
  type        = string
}
variable "port" {
  type        = string
  default     = null
}
variable "skip_final_snapshot" {
  type        = bool
  default     = false
}
variable "publicly_accessible" {
  type        = bool
  default     = false
}
variable "sg-ids" {
  type        = list(string)
  default     = []
}

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
  type        = list(string)
  default     = []
}
variable "user_data" {
  type        = string
  default     = null
}
#################
# vars for both
#################
variable "tags" {
  type        = map(string)
  default     = {}
}
