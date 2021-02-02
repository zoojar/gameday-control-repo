# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver
class profile::webserver {
  class { 'apache': }

apache::vhost { 'mllab':
  serveraliases => [],
  docroot       => '/var/www/html',
  docroot_owner => 'apache',
  docroot_group => 'apache',
  port          => '80',
}

file { '/var/www/html/':
  ensure => directory,
}

file { 'site-content':
    ensure  => present,
    mode    => '0644',
    path    => '/var/www/html/index.html/',
    content => '<h1>Welcome to the VMER Game day !!</h1> <br/> <h2> This is a test page </h2>',
  }
}
