module "certificates_bucket" {
  source                  = "git::ssh://git@github.com/osodevops/aws-terraform-module-s3.git"
  s3_bucket_name          = "certificates-${data.aws_caller_identity.current.account_id}"
  s3_bucket_policy        = "${data.template_file.policy.rendered}"
  s3_bucket_force_destroy = "${var.s3_bucket_force_destroy}"
  common_tags             = "${var.common_tags}"
}