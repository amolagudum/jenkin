resource "aws_instance" "amoldemoec2" {
	ami = "ami-0a8b4cd432b1c3063"
	instance_type = "t2.micro"
   vpc_security_group_ids = ["sg-05a3fb889764e70d5"]
	key_name = "amol"
  user_data = <<-EOF
		#!/bin/bash
    yum update -y
yum install -y httpd
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello, I am $(hostname -f) Apache HTTP Server Demo using Terraform" > /var/www/html/index.html
EOF
	tags = {
		Name = "Terraform"	
	
	}
}