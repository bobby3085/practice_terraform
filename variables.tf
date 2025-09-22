# creating variables 


variable "instance_name" {
  description = "The name for the EC2 instance. "
  type = string
  default = " terrafrom-exp "
}

variable "instance_type" {
  description = "The EC2 instance type"
  type = string
  default = "t2.micro"
}

variable "key_name" {
  description = "The name of EC2 instance key pair"
  type = "string"
  default = " key_${var.instance.name}"
}
