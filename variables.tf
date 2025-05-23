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

variable "force_random_password" {
  type        = bool
  default     = false
  description = "Set user password to a random value"
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
  default     = null
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
