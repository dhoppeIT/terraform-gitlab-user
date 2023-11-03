# terraform-gitlab-user

Terraform module to manage the following GitLab resources:

* gitlab_user

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_user" {
  source = "git::ssh://git@gitlab.com:terraform-child-modules1/terraform-gitlab-user.git"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_user.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_can_create_group"></a> [can\_create\_group](#input\_can\_create\_group) | Whether to allow the user to create groups | `bool` | `false` | no |
| <a name="input_email"></a> [email](#input\_email) | The e-mail address of the user | `string` | n/a | yes |
| <a name="input_is_admin"></a> [is\_admin](#input\_is\_admin) | Whether to enable administrative privileges | `bool` | `false` | no |
| <a name="input_is_external"></a> [is\_external](#input\_is\_external) | Whether a user has access only to some internal or private projects | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the user | `string` | n/a | yes |
| <a name="input_namespace_id"></a> [namespace\_id](#input\_namespace\_id) | The ID of the user's namespace | `number` | `null` | no |
| <a name="input_note"></a> [note](#input\_note) | The note associated to the user | `string` | `null` | no |
| <a name="input_password"></a> [password](#input\_password) | The password of the user | `string` | `null` | no |
| <a name="input_projects_limit"></a> [projects\_limit](#input\_projects\_limit) | Number of projects user can create | `number` | `0` | no |
| <a name="input_reset_password"></a> [reset\_password](#input\_reset\_password) | Send user password reset link | `bool` | `false` | no |
| <a name="input_skip_confirmation"></a> [skip\_confirmation](#input\_skip\_confirmation) | Whether to skip confirmation | `bool` | `true` | no |
| <a name="input_state"></a> [state](#input\_state) | The state of the user account | `string` | `"active"` | no |
| <a name="input_username"></a> [username](#input\_username) | The username of the user | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppe).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
