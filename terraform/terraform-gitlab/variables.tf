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
variable "project_name" {
  description = "Onboard project name"
  type        = string
}
variable "aws_access_key" {
  description = "aws_acces_key_id"
  type        = string
  sensitive   = true
  default     = "admin"
}
variable "aws_secret_key" {
  description = "AWS_SECRET_ACCESS_KEY"
  type        = string
  sensitive   = true
  default     = "password"
}