# Testing Terraform

Like regular infrastructure can "code rot" due to:
- manual changes in the UI
- not defining version of resources, but just setting to "latest"
- deprecated dependencies
- unapplied changes

You should have an AWS account used entirely for testing Terraform files.

## Static checks
Terraform has a number of built in checks
- terraform fmt: validate formatting
- terraform validate: check that variables are set and have the correct data type, etc
- terraform plan
- custom validation rules

## External checks
- tflint
- checkov, tfsec, terrascan: Security compliance
- snyk

## Automation
- scripting: using e.g. bash or python
- terratest: Go package to perform automated testing

## Plan
Terraform plan should be run periodically,ideally automated, to validate that no manual changes have been made on the infrastructure.


