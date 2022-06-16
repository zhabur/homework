<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >=1.2.0 |
| gitlab | ~> 3.15.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| gitlab\_groups | ./modules/gitlab_group | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| gitlab\_token | Gitlab Token | `string` | `"uaaH7nb9no-mDE2k4aac"` | no |
| gitlab\_url | Gitlab server url | `string` | `"http://gitlab.zhabur.home/api/v4"` | no |
| project\_names | Onboard project name | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| group\_url | main group urls |
<!-- END_TF_DOCS -->