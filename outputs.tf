#output the public ip address of an EC2 instance

output "public_ip_count" {
  description = "The total number of public IP addresses"
  value = length(aws_instance.web_server.*.public_ip)
}

output "instance_public_ip" {
  description = "The public IP address of the web server instance"
  value = aws_instance.web_server.*.public_ip
}
