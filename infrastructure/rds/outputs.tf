output "aws_db_instance_sqprodcript_id" {
  value = "${aws_db_instance.sqprodcript.id}"
}

# output "aws_db_parameter_group_migration_id" {
#   value = "${aws_db_parameter_group.migration.id}"
# }

# output "aws_db_parameter_group_sqprodcript_id" {
#   value = "${aws_db_parameter_group.sqprodcript.id}"
# }

output "aws_db_subnet_group_default-vpc-02cd2287de5739e10_id" {
  value = "${aws_db_subnet_group.vpc-02cd2287de5739e10.id}"
}

output "aws_db_subnet_group_private-rds_id" {
  value = "${aws_db_subnet_group.private-rds.id}"
}

output "aws_db_subnet_group_public-rds_id" {
  value = "${aws_db_subnet_group.public-rds.id}"
}
