resource "aws_s3_bucket" "tasdikrahman-ops-bucket" {
  bucket = "tasdikrahman-ops-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    Name       = "tasdikrahman-ops-bucket"
    Environmet = "devel"
  }
}
