terraform {
  required_version = ">=1.1.0"
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 3.15.0"
    }
  }
}