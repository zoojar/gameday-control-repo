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


