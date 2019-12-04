variable "account_name" {
  description = "A friendly name for the member account."
}

variable "email" {
  description = "The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account."
}

variable "iam_user_access_to_billing" {
  default     = "DENY"
  description = "If set to `ALLOW`, the new account enables IAM users to access account billing information if they have the required permissions. If set to `DENY`, then only the root user of the new account can access account billing information."
}

variable "parent_id" {
  default     = ""
  description = "Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID. A configuration must be present for this argument to perform drift detection."
}

variable "role_name" {
  default     = "MasterAccountAccess"
  description = "The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account. The Organizations API provides no method for reading this information after account creation, so Terraform cannot perform drift detection on its value and will always show a difference for a configured value after import unless `ignore_changes` is used."
}

variable "tags" {
  default     = {}
  description = "Key-value mapping of resource tags."
}

