#use a data source to look up the latest Amazon Linux AMI

data "aws_ami" "ubuntu" {
  most_recent = true
  
  owners = ["099720109477"]

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}



# this is the important part which defines what we need


resource "aws_instance" "web_server" {  	
  count = var.no_of_instances # 
  ami = data.aws_ami.ubuntu.id 			
  instance_type = var.instance_type
  key_name = "my_key"
  
  tags = {
    Name = "${var.instance_name}-Instance"	# tags block allows us to apply key-value tags to our EC2 instance for organization and identification
    Environment = "Development"
  }
}


