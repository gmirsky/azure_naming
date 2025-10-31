# Testing

This directory contains tests for the Azure Naming module.

## Running Tests

You can use tools like [Terratest](https://terratest.gruntwork.io/) or [terraform-compliance](https://terraform-compliance.com/) to test this module.

### Example with Terraform

```bash
cd examples/complete
terraform init
terraform plan
terraform apply
terraform destroy
```

## Test Structure

- Unit tests should validate individual naming patterns
- Integration tests should validate the module works with real Azure resources
- Validation tests should check naming conventions and constraints
