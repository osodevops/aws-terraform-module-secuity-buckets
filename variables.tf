variable "s3_bucket_force_destroy" {}

variable "key_names" {
  type = list(string)
}

variable "common_tags" {
  type = map(string)
}

locals {
  certificate_bucket_name = "${lower(data.aws_iam_account_alias.current.account_alias)}-${data.aws_caller_identity.current.account_id}-certificates-${data.aws_region.current.name}"
  ssh_key_bucket_name = "${lower(data.aws_iam_account_alias.current.account_alias)}-${data.aws_caller_identity.current.account_id}-keys-${data.aws_region.current.name}"
}
