resource "aws_db_instance" "sqprodcript" {
  allocated_storage                     = "20"
  auto_minor_version_upgrade            = "false"
  availability_zone                     = "${var.region}a"
  backup_retention_period               = "7"
  backup_window                         = "03:55-04:25"
  copy_tags_to_snapshot                 = "true" #
  customer_owned_ip_enabled             = "false"
  db_subnet_group_name                  = "${aws_db_subnet_group.vpc-02cd2287de5739e10.name}"
  deletion_protection                   = "false"
  engine                                = "postgres"
  engine_version                        = "14.7"
  final_snapshot_identifier             = "sqprodcript-snapshot-${formatdate("YYYYMMDDhhmmss", timestamp())}"
  skip_final_snapshot                   = "false"
  iam_database_authentication_enabled   = "false"
  identifier                            = "sqprodcript"
  instance_class                        = "db.t3.micro"
  license_model                         = "postgresql-license"
  maintenance_window                    = "sat:04:41-sat:05:11"
  max_allocated_storage                 = "1000"
  monitoring_interval                   = "60"
  monitoring_role_arn                   = "arn:aws:iam::${var.account_id}:role/rds-monitoring-role"
  multi_az                              = "false"
  network_type                          = "IPV4"
  option_group_name                     = "default:postgres-14"
  performance_insights_enabled          = "true"
  performance_insights_retention_period = "7"
  port                                  = "5432"
  publicly_accessible                   = "false"
  storage_encrypted                     = "true"
  storage_throughput                    = "0"
  storage_type                          = "gp2"
  username                              = "postgres"
  password                              = var.sqprodcript_password
  vpc_security_group_ids                = [var.sg_sqprodcript]

  tags = {
    Name    = "Criptografia"
    Billing = "your-billing"
  }

  tags_all = {
    Name    = "Criptografia"
    Billing = "your-billing"
  }
}