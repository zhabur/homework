# Locals
locals {
  name_prefix = "wa"
}

data "gitlab_group" "wa_main_group" {
  group_id = 29
}

# resource
# Create gitlab group
resource "gitlab_group" "wa_basic_group" {
  for_each    = toset(var.project_names)
  name        = "${local.name_prefix}-${each.key}"
  path        = "${local.name_prefix}-${each.key}"
  description = "${local.name_prefix}-${each.key} group"
  lifecycle {
    precondition {
      condition     = data.gitlab_group.wa_main_group.description == "Parent"
      error_message = "This group cant create additional projects"
    }
  }
}

## Create a project in wa_basic_group group
resource "gitlab_project" "wa_basic_group" {
  for_each     = gitlab_group.wa_basic_group
  name         = "${each.value.name} -project"
  description  = "${each.value.name} project description"
  namespace_id = each.value.id

  depends_on = [
    gitlab_group.wa_basic_group
  ]
}