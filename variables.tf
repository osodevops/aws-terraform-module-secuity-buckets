variable "s3_bucket_force_destroy" {}

variable "key_names" {
  type = list(string)
}

variable "common_tags" {
  type = map(string)
}
