#Output group urls
output "urls" {
  description = "Groups url"
  value       = values(gitlab_group.wa_basic_group)[*].web_url
}