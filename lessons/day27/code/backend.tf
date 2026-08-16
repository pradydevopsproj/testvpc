terraform {
  backend "s3" {
    bucket       = "tfstate-dev-roottt-ap-south-1-su0t0k-main-bkt" # Replace with your S3 bucket name
    key          = "terraform/state/main/terraform.tfstate"
    region       = "ap-south-1" # Replace with your region
    use_lockfile = true         # S3 Native Locking (No DynamoDB needed)
    encrypt      = true
  }
}
