# Modules
Group resources into logical modules that are each used with a number of input variables. Reasonable defaults should always be set if possible,

## Types of modules
- Root module: Default module containing all tf-files in main directory
- Child modules: A separate module referred fom a tf-file
- Modules ca be locally or in the Terraform registry, Github, an S3 bucket, GCS etc.

## Why modules?
- Raise the abstraction level from base resource
- Group resources
- Expose input variables to allow customization
- Provide useful defaults
- Return outputs to make further integrations possible

On Terraform registry many prebuilt modules are available for e.g. AWS. These can be used from own tf-files..


