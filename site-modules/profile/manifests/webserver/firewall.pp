# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver::firewall
class profile::webserver::firewall {
  class { 'firewall': }
  Firewall {
    before  => Class['profile::fw::post'],
    require => Class['profile::fw::pre'],
  }
  #firewall { '100 allow http and https access':
  #  dport   => [80, 443],
  #  proto   => 'tcp',
  #  action  => 'accept',
  #}

}
