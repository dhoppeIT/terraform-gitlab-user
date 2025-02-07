variable "email" {
  type        = string
  description = "The e-mail address of the user"
}

variable "name" {
  type        = string
  description = "The name of the user"
}

variable "username" {
  type        = string
  description = "The username of the user"
}

variable "can_create_group" {
  type        = bool
  default     = false
  description = "Whether to allow the user to create groups"
}

variable "extern_uid" {
  type        = string
  default     = null
  description = "A specific external authentication provider UID"
}

variable "external_provider" {
  type        = string
  default     = null
  description = "The external provider"
}

variable "is_admin" {
  type        = bool
  default     = false
  description = "Whether to enable administrative privileges"
}

variable "is_external" {
  type        = bool
  default     = false
  description = "Whether a user has access only to some internal or private projects"
}

variable "namespace_id" {
  type        = number
  default     = null
  description = "The ID of the user's namespace"
}

variable "note" {
  type        = string
  default     = null
  description = "The note associated to the user"
}

variable "password" {
  type        = string
  sensitive   = true
  default     = null
  description = "The password of the user"
}

variable "projects_limit" {
  type        = number
  default     = 0
  description = "Number of projects user can create"
}

variable "reset_password" {
  type        = bool
  default     = false
  description = "Send user password reset link"
}

variable "skip_confirmation" {
  type        = bool
  default     = true
  description = "Whether to skip confirmation"
}

variable "state" {
  type        = string
  default     = "active"
  description = "The state of the user account"

  validation {
    condition     = contains(["active", "deactivated", "blocked"], var.state)
    error_message = "Valid values are active, deactivated, blocked"
  }
}
