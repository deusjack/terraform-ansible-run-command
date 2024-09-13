locals {
  bug_string      = <<EOT
/usr/lib/python3.11/site-packages/paramiko/pkey.py:100: CryptographyDeprecationWarning: TripleDES has been moved to cryptography.hazmat.decrepit.ciphers.algorithms.TripleDES and will be removed from this module in 48.0.0.
  "cipher": algorithms.TripleDES,
/usr/lib/python3.11/site-packages/paramiko/transport.py:259: CryptographyDeprecationWarning: TripleDES has been moved to cryptography.hazmat.decrepit.ciphers.algorithms.TripleDES and will be removed from this module in 48.0.0.
  "class": algorithms.TripleDES,
EOT
  playbook_stdout = one(jsondecode(replace(ansible_playbook.run_command.ansible_playbook_stdout, local.bug_string, "")).plays).tasks[0].hosts[var.hostname]
}

output "triggers" {
  value = {
    playbook = ansible_playbook.run_command.id
  }
}

output "stdout" {
  value = local.playbook_stdout.stdout
}

output "stderr" {
  value = local.playbook_stdout.stderr
}

output "stdout_lines" {
  value = local.playbook_stdout.stdout_lines
}

output "stderr_lines" {
  value = local.playbook_stdout.stderr_lines
}

output "command" {
  value = var.command
}
