#################
# ansible files #
#################

resource "null_resource" "run_command" {
  triggers = {
    run_command = filemd5("${path.module}/run_command.yaml")
  }
}

#####################
# external triggers #
#####################

resource "null_resource" "external" {
  triggers = var.external_triggers
}

#############
# variables #
#############

resource "null_resource" "variables" {
  triggers = {
    command = var.command
  }
}
