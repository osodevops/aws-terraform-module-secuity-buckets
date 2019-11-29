data "template_file" "keys_policy" {
  template = "${file("${path.module}/files/s3_certificate_policy.json")}"

  vars {
    s3_bucket_name = local.ssh_key_bucket_name
    account_id     = data.aws_caller_identity.current.account_id
  }
}
