remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "terraform-state"
    key = "dev/terraform.tfstate"
    region     = "us-east-1"
    encrypt    = true  
    profile    = "test"
    endpoint   = "http://minio.zhabur.home:9000"
    skip_credentials_validation = true
    force_path_style            = true
  }
}
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents =  <<EOF
provider "gitlab" {
  base_url = var.gitlab_url
  token    = var.gitlab_token
}
EOF
}
