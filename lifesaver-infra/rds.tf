resource "aws_db_subnet_group" "lifesaver_db_subnet" {
  name = "lifesaver-db-subnet"

  subnet_ids = [
    aws_subnet.public_subnet.id,
    aws_subnet.public_subnet_2.id
  ]

  tags = {
    Name = "lifesaver-db-subnet-group"
  }
}

resource "aws_db_instance" "lifesaver_rds" {
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  publicly_accessible    = true
  skip_final_snapshot    = true

  vpc_security_group_ids = [aws_security_group.lifesaver_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.lifesaver_db_subnet.name

  tags = {
    Name = "LifeSaver-RDS"
  }
}