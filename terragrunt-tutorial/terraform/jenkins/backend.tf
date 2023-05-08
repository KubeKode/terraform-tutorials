terraform {
  backend "gcs" {
    prefix = "jenkins"
    bucket = "my-bucket-e13dac3"
  }
}