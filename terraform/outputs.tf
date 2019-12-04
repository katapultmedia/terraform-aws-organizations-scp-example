output "account-xyz-switch-role" {
  value = "https://signin.aws.amazon.com/switchrole?roleName=primary-role&account=${module.account-xyz.account.id}"
}
