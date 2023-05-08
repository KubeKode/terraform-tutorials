terraform {
  backend "gcs" {
    prefix = "frontend"
    bucket = "my-bucket-e13dac3"
  }
}