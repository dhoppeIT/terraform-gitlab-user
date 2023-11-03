module "gitlab_user" {
  source = "../../"

  name     = "John Doe"
  username = "jdoe"
  password = "XKvhCJp9MtwTgwRu" # gitleaks:allow
  email    = "john.doe@example.com"
}
