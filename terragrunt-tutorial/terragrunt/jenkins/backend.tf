# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "gcs" {
    prefix = "jenkins-state"
    bucket = "my-bucket-e13dac3"
  }
}