terraform {
  backend "s3" {
    bucket                      = "terraform-state"
    key                         = "dev/terraform.tfstate"
    region                      = "eu-west-1"
    endpoint                    = "http://minio.zhabur.home:9000"
    skip_credentials_validation = true
    force_path_style            = true
  }
}