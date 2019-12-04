# These are purely example policies

// Control the regions
resource "aws_organizations_policy" "regions-east-west-only" {
  name    = "regions-east-west-only"
  content = file("policies/regions-east-west-only.json")
}

resource "aws_organizations_policy_attachment" "regions-east-west-only" {
  policy_id = aws_organizations_policy.regions-east-west-only.id
  target_id = aws_organizations_organizational_unit.this.id
}

// Do not allow accounts to be removed from the Org
resource "aws_organizations_policy" "orgs-cannot-remove" {
  name    = "orgs-cannot-remove"
  content = file("policies/orgs-cannot-remove.json")
}

resource "aws_organizations_policy_attachment" "orgs-cannot-remove" {
  policy_id = aws_organizations_policy.orgs-cannot-remove.id
  target_id = aws_organizations_organizational_unit.this.id
}

// Do not allow Cloudtrail removal
resource "aws_organizations_policy" "cloudtrail-required" {
  name    = "cloudtrail-required"
  content = file("policies/cloudtrail-required.json")
}

resource "aws_organizations_policy_attachment" "cloudtrail" {
  policy_id = aws_organizations_policy.cloudtrail-required.id
  target_id = aws_organizations_organizational_unit.this.id
}
