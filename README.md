# module-run-command
Terraform module to run a command on Linux with Ansible

> [!Warning]
> * This module doesn't have resources with a traditional state.
> * Make sure to set var.external_triggers for any changes that require an update other than variables.
> * This module doesn't delete the changes on the target system on destroy.

# Terraform Docs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8 |
| <a name="requirement_ansible"></a> [ansible](#requirement\_ansible) | >= 1, < 2 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3, < 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ansible"></a> [ansible](#provider\_ansible) | 1.3.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ansible_playbook.run_command](https://registry.terraform.io/providers/ansible/ansible/latest/docs/resources/playbook) | resource |
| [null_resource.external](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.run_command](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.variables](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_command"></a> [command](#input\_command) | Command to be execute | `string` | n/a | yes |
| <a name="input_external_triggers"></a> [external\_triggers](#input\_external\_triggers) | Triggers for rerunning the directory playbook except variables | `map(string)` | `{}` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The hostname of linux machine the command will be executed on | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_command"></a> [command](#output\_command) | n/a |
| <a name="output_stderr"></a> [stderr](#output\_stderr) | n/a |
| <a name="output_stderr_lines"></a> [stderr\_lines](#output\_stderr\_lines) | n/a |
| <a name="output_stdout"></a> [stdout](#output\_stdout) | n/a |
| <a name="output_stdout_lines"></a> [stdout\_lines](#output\_stdout\_lines) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
