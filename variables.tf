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

variable "no_of_instances" {
  description = "Enter how many instances needed:"
  type = number
  
}
