# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
class profile::motd {
  class { 'motd':
    content => "This instance: %{trusted.hostname} is managed by Puppet.\n",
  }
}
