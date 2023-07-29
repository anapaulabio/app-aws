# module "s3" {
#     source = "./s3"
# }

# module "route53" {
#   source = "./route53"
# }

# module "acm" {
#   source = "./acm"
# }

# module "cloudfront" {
#   source = "./cloudfront"
# }

# module "eks" {
#   source = "eks"
# }

module "rds" {
  source     = "./rds"
  region     = local.region
  account_id = local.account_id

  id_subnetwork_private1 = "{SUBNET_PRIVATE1}"
  id_subnetwork_private2 = "{SUBNET_PRIVATE2}"
  id_subnetwork_public1 = "{SUBNET_PUBLIC1}"
  id_subnetwork_public2 = "{SUBNET_PUBLIC2}"

  sg_sqprodcript = "{SECURITY_GROUP}"
  sqprodcript_password = "{RDS_SQPRODCRIPT_PASSWORD}"

}

module "iam" {
  source = "./iam"
}