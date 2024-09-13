resource "ansible_playbook" "run_command" {
  name                    = var.hostname
  playbook                = "${path.module}/run_command.yaml"
  replayable              = false
  ignore_playbook_failure = false
  extra_vars = {
    cmd = var.command
  }
  lifecycle {
    replace_triggered_by = [
      null_resource.run_command,
      null_resource.variables,
      null_resource.external
    ]
  }
}
