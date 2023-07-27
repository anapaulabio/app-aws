module "s3" {
    source = "./s3"
}

module "route53" {
  source = "./route53"
}

module "acm" {
  source = "./acm"
}

module "cloudfront" {
  source = "./cloudfront"
}

module "eks" {
  source = "eks"
}

module "rds" {
  source = "./rds"
}

module "iam" {
  source = "./iam"
}