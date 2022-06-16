#backend

# Configure the GitLab Provider
provider "gitlab" {
  base_url = var.gitlab_url
  token    = var.gitlab_token
}

#locals
locals {
  name = "wa-${var.project_name}"
}

#Resource
resource "gitlab_group" "wa_basic_group" {
  name        = local.name
  path        = local.name
  description = "${local.name} group"
}

# Create a project in the example group
resource "gitlab_project" "wa_basic_project" {
  name         = "Project ${local.name}"
  description  = var.project_name
  namespace_id = gitlab_group.wa_basic_group.id
}
