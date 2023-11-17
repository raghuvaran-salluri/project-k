terraform {
  backend "s3" {
    bucket         = "jenkins-tf-eks"
    key            = "jenkins/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
