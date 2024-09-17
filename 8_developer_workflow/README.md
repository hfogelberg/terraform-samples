# Developer Workflow

## Potential problems
- Changing names when refactoring: this could lead to terraform tearing down the instance and setting up a new one, which could cause issues
- Saving state file with sensitive data to e.g. Github
- Cloud timeouts when running provisioning job
- naming conflicts
- Forgetting to destroy test-infra, which could lead to large bill
- Different team members using different version of Terraform - cannot apply changes when a newer version has been used
- Multiple ways to accomplish the same configuration
- Some params cannot be changed after being provisioned, which could cause down time
- Manual changes in the console

