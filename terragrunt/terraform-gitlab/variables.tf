#Provider vars
variable "gitlab_url" {
  description = "Gitlab server url"
  type        = string
  default     = "http://gitlab.zhabur.home/api/v4"
}

variable "gitlab_token" {
  description = "Gitlab Token"
  type        = string
  sensitive   = true
  default     = "uaaH7nb9no-mDE2k4aac"
}

# Var project name
variable "project_names" {
  description = "Onboard project name"
  type        = list(any)
}