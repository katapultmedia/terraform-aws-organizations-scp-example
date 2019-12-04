# AWS Organizations - Service Control Policies with Terraform

This is an example repository showing how to implement AWS Organization service control policies through Terraform.

## Service Control Policies

The policies in this project are all just example policies. They work, but the primary use here is for testing only.

See the [terraform/policies](terraform/policies) directory.

## Running

Of course the emails are invalid in the Terraform so update them before `apply`ing.

Note: you can of course use normal Terraform commands within the `terraform` folder.

### Planning

```bash
make plan
```

### Applying

```bash
make apply
```
