resource "aws_db_subnet_group" "vpc-02cd2287de5739e10" {
  description = "Created from the RDS Management Console"
  name        = "vpc-02cd2287de5739e10"
  subnet_ids  = [var.id_subnetwork_private2, var.id_subnetwork_public1, var.id_subnetwork_private1]
}

resource "aws_db_subnet_group" "private-rds" {
  description = "private-rds"
  name        = "private-rds"
  subnet_ids  = [var.id_subnetwork_private2, var.id_subnetwork_private1]
}

resource "aws_db_subnet_group" "public-rds" {
  description = "public-rds"
  name        = "public-rds"
  subnet_ids  = [var.id_subnetwork_public2, var.id_subnetwork_public1]
}
