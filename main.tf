#use a data source to look up the latest Amazon Linux AMI

data "aws_ami" "amazon_ubuntu" {
  most_recent = true
  owners - ["amazon"]
  
  filter {
    name = "name"
    values = ["hvm"]
  }
}



# this is the important part which defines what we need

resource "aws_instance" "ec2_by_terraform" {  	# "ec2_by_terraform" is the name we are giving to instance,
						#"aws_instance" means we the resource we need from aws is an instance, we can replace with s3 etc
  ami = data.aws_ami.amazon_ubuntu.id 			# we can get ami-xxx number and type t2.micro or t3.micro etc from aws
  isntance_type = var.instance_type
  key_name = var.key-name

  tags = {
    Name = "${var.instance_name}-Instance"		# tags block allows us to apply key-value tags to our EC2 instance for organization and identification
    Environment = "Development"
  }
}


