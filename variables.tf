variable "s3_bucket_force_destroy" {}

variable "key_names" {
  type = "list"
}

variable "common_tags" {
  type = "map"
}

locals {
  certificate_bucket_name = "${data.aws_iam_account_alias}-${data.aws_caller_identity.current.id}-certificates-${data.aws_region.current.name}"
  ssh_key_bucket_name = "${data.aws_iam_account_alias}-${data.aws_caller_identity.current.id}-keys-${data.aws_region.current.name}"
}