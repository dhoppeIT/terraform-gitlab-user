resource "gitlab_user" "this" {
  name                  = var.name
  username              = var.username
  email                 = var.email
  can_create_group      = var.can_create_group
  extern_uid            = var.extern_uid
  external_provider     = var.external_provider
  force_random_password = var.force_random_password
  is_admin              = var.is_admin
  is_external           = var.is_external
  namespace_id          = var.namespace_id
  note                  = var.note
  password              = var.password
  projects_limit        = var.projects_limit
  reset_password        = var.reset_password
  skip_confirmation     = var.skip_confirmation
  state                 = var.state

  lifecycle {
    ignore_changes = [
      email
    ]
  }
}
