
module "gitlab_groups" {
  source        = "./modules/gitlab_group"
  project_names = var.project_names
}