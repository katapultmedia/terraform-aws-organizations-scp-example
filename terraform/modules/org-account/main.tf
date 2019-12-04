resource "aws_organizations_account" "this" {
  # Names cannot be changed. It will trigger a deletion of the account, which may fail due to a
  # ConstraintViolationException error or similar
  name = var.account_name

  # Email must be unique across AWS as a whole
  email = var.email

  iam_user_access_to_billing = var.iam_user_access_to_billing
  parent_id                  = var.parent_id

  # Gives the primary account access to the new account
  role_name = var.role_name

  tags = var.tags

  # There is not an AWS Organizations API for reading role_name so ignoring it is required to prevent future errors
  lifecycle {
    ignore_changes = [role_name]
  }
}
