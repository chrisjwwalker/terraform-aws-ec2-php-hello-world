terraform {
  backend "s3" {
    bucket         = "terraform-aws-ec2-php-hello-world-tf-state"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-aws-ec2-php-hello-world-lock"
  }
}
