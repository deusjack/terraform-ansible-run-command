resource "ansible_playbook" "transactional_update_run" {
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
      null_resource.variables
    ]
  }
}
