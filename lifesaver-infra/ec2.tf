resource "aws_instance" "lifesaver_ec2" {
  ami                    = "ami-0f58b397bc5c1f2e8"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.lifesaver_sg.id]
  key_name               = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd php php-mysqlnd -y
              systemctl start httpd
              systemctl enable httpd
              EOF

  tags = {
    Name = "LifeSaver-EC2"
  }
}