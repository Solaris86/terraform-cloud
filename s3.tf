resource "random_id" "bucket_suffix" {
  byte_length = 6
}

resource "aws_s3_bucket" "tf_cloud" {
  bucket = "terraform-cloud-vcs-${random_id.bucket_suffix.hex}"
}