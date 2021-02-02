# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver
class profile::webserver {
  class { 'profile::webserver::apache':
  }

  class { 'profile::webserver::content':
  }

  #firewall { '100 allow http and https access':
  #  dport  => [80, 443],
  #  proto  => tcp,
  #  action => accept,
  #}
}
