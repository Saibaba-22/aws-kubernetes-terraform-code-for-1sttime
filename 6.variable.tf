variable "db_name" {
  default = "employeedb"
}

variable "db_user" {
  default = "ordinary"
}

variable "db_password" {
  default = "Database12345"
}

variable "ec2_name" {
  default = "2tier Python Appserver"
}

variable "ec2_key" {
  description = "The name of the SSH key pair to use for instances"
  type        = string
  default     = "YOUR-AWS-EC2-KEY-NAME"
}
