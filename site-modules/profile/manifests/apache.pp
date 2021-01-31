# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::apache
class profile::apache {
  include apache
  apache::vhost { 'host1.mllab':
    ensure => present,
  }

  firewall { '100 allow http and https access':
    dport  => [80, 443],
    proto  => 'tcp',
    action => 'accept',
  }
}


