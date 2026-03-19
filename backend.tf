terraform {
  backend "s3" {
    bucket       = "841162693987-terraform-state"
    key          = "vaultpay/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
