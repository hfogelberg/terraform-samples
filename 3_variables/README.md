# Variables

Types of variables:
- inputs
- local
- outputs

Setting input variables
- Manual entry during plan/deploy (should avoid)
- Default value in declaration
- TF_VAR env-variables (must have the prefix)
- terraform.tfvars file
- *.auto.tfvars file
- Command line -var or -var-file

Variables can have primitive or complex types.
Terraform will type check the variables.
Custom validation check can be made.

## Sensitive data
Mark sensitive data with `sensitive=true`. That way they will not be displayed in the output or logs. However if a local state file is used they will be saved in clear text.

An external store, such as AWS secrets manager or Github secrets can be used.

## Passing in variables
If several var-files are used, depending on e.g. environment
`terraform apply -var-files="myvars.auto.tfvars"`

Pass in secret variables manually
`terraform apply -var="db_user=myuser" -var="db_password=mypassword
"` 



