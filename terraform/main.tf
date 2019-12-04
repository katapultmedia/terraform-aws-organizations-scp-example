// Get the org root
data "aws_organizations_organization" "this" {}

// Create a new OU
resource "aws_organizations_organizational_unit" "this" {
  name      = "infosec"
  parent_id = data.aws_organizations_organization.this.roots[0].id
}

// Create a new account and tie it to the OU
module "account-abc" {
  source = "./modules/org-account"

  account_name = "account-abc"
  email        = "account-abc@mycustomdomainownedbymealone.com"
  parent_id    = aws_organizations_organizational_unit.this.id
}

// Create another new account and tie it to the OU
module "account-xyz" {
  source = "./modules/org-account"

  account_name = "account-xyz"
  email        = "account-xyz@mycustomdomainownedbymealone.com"
  parent_id    = aws_organizations_organizational_unit.this.id
}
