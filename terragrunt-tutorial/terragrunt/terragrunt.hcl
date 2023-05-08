generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "google" {
  project     = "poetic-harmony-380816"
  region      = "us-central1"
}
EOF
}
generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "gcs" {
    prefix = "${path_relative_to_include()}-state"
    bucket = "my-bucket-e13dac3"
  }
}
EOF
}