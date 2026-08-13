terraform {
  backend "s3" {
    bucket       = "tfstate-dev-prady-demo-ap-south-1-2wlagf-main-bkt" # Replace with your S3 bucket name
    key          = "terraform/state/main/terraform.tfstate"
    region       = "ap-south-1" # Replace with your region
    use_lockfile = true         # S3 Native Locking (No DynamoDB needed)
    encrypt      = true
  }
}
