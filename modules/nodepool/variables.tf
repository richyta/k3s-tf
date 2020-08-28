variable "name" {
  type = string
}

variable "cluster" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnets" {
  type = list(string)
}

variable "ami" {
  type = string
}

variable "ssh_authorized_keys" {
  type    = list(string)
  default = []
}

variable "auto_deployed_manifests" {
  type    = list(string)
  default = []
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "pre_userdata" {
  type        = string
  default     = ""
  description = "base64 encoded custom userdata pre k3s boot"
}

variable "post_userdata" {
  type    = string
  default = "base64 encoded custom userdata post k3s boot"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "iam_instance_profile" {
  type    = string
  default = null
}

variable "spot" {
  type    = bool
  default = false
}

variable "min" {
  type    = number
  default = 2
}

variable "max" {
  type    = number
  default = 3
}

variable "desired" {
  type    = number
  default = 2
}

#
# K3S  Variables
#
variable "k3s_token" {
  type    = string
  default = null
}