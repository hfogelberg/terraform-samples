# Terraform Samples

Following [Complete Terraform Course](https://www.youtube.com/watch?v=7xngnjfIlK4).
Course Github [repo](https://github.com/sidpalas/devops-directive-terraform-course).

## Terrafrom overview
- Terraform is a tool for building, changing and versioning infrastructure safely and efficiently. The tool is cloud agnostic.
- Terraform is often used together with 
  - a configuration management tool, such as Ansible.
  - Packer, which can be used to create identical images for different platforms.
  - Kubernetes for orchestration
  
### Architecture
- State: reference to the infrastructure that has already been provisioned
- Config: what we want the infrastructure to be after the changes
- Core: the engine the figures out what changes need to be done on the cloud provider
- Provider: "plugins" for various Internet services

## Install Terraform and authenticate on AWS
Install with Homebrew on Mac: `brew install terraform`.
AWS CLI needs to be installed with Access key id, Access secret key and Default region set.

AWS user access needed for the course:
```
RDS
EC2
IAM
S3
DynamoDB
Route53
```
These are set to full access, but could probably be reduced.

Check that user config works: `aws lambda list-functions --profile henrik_terraform`

## Initialize terraform
```terraform

terraform init
terraform plan
terraform apply
```

To clean up the resources: `terraform destroy`.

The `data` section in a Terraform file references resources that are not managed by Terraform, but are pulled in and used. This could be for instance existing security groups that are used.

### The state file
Sensitive information, such as passwords. It must therefore be handled securely and not pushed to e.g. Github. 

The state file can be stored locally, but needs to be on a remote location if it is to be used be several developers. It is possible to recreate the state file if it is missing by running the [import](https://medium.com/version-1/recovering-from-a-deleted-terraform-state-file-5e030c88aae0) command.

For remote storage Terraform cloud can be used. For small teams it is free, but comes with a cost for bigger teams. Also on AWS Amazon S3 together with DynamoDB can be used. This makes it possible to have sensitive data encrypted, which is not the case when having the file locally.

Setup for [Terraform cloud and S3](https://youtu.be/7xngnjfIlK4?t=2442).




