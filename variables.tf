# creating variables 

# creating variable for instance_name
variable "instance_name" {
  description = "The name for the EC2 instance. "
  type = string
  default = " terrafrom-exp "
}

#creating variable instance_type
variable "instance_type" {
  description = "The EC2 instance type"
  type = string
  default = "t2.micro"
}
# creating variable for count : no_of_instances
variable "no_of_instances" {
  description = "Enter how many instances needed:"
  type = number
  
}
