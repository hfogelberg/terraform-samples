# Multiple environments
Handle Dev, Stage and production environments.

There are two main approaches: separate the environments by file system or using workspaces. Both have advantages and disadvantages.

Separating by file system has the disadvantage that the code will need to be duplicated and is therefore difficult to maintain. The workspace approach is more maintainable, but will leak information on the production environment to users who ony have access to Development and Staging. Also there is a risk of deploying to the wrong environment if done manually. The process should therefore be automated.

## Using Workspace
Resources should use the prefix `${local.environment_name}`.

```bash
terraform workspace new production
terraform workspace list
terraform workspace select staging
```

