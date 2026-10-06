variable "region" {
  type    = string
  default = "ap-southeast-2"
}

variable "aws_profile" {
  description = "AWS CLI profile with EC2 permissions"
  type        = string
  default     = "terraform-admin"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair name in the region"
  type        = string
  default     = "PixelFrameKeyPair"
}

variable "private_key_file" {
  description = "Path to the .pem for key_name, as seen from the machine running Ansible"
  type        = string
  default     = "~/.ssh/PixelFrameKeyPair.pem"
}

variable "ssh_cidr" {
  description = "Who may SSH in. Narrow to your own IP, e.g. 203.0.113.7/32"
  type        = string
  default     = "0.0.0.0/0"
}
