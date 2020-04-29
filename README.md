# Hammer CLI Foreman Leapp

This Hammer CLI plugin contains set of commands for [foreman_leapp](
  https://github.com/oamg/foreman_leapp
) plugin.

## Versions

This is the list of which version of Foreman Leapp is needed to which version of this plugin.

| hammer_cli_foreman_leapp | 1.0.0 |
|----------------------------|-------|
|            foreman_leapp | 1.0.0 |

## Installation

    $ gem install hammer_cli_foreman_leapp

    $ mkdir -p ~/.hammer/cli.modules.d/

    $ cat <<EOQ > ~/.hammer/cli.modules.d/foreman_leapp.yml
    :foreman_leapp:
      :enable_module: true
    EOQ

    # to confirm things work, this should return useful output
    hammer preupgrade-reports --help

## More info

See our [Hammer CLI installation and configuration instuctions](
https://github.com/theforeman/hammer-cli/blob/master/doc/installation.md#installation).