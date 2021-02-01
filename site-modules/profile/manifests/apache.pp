#   include profile::apache
#class profile::apache {
#  include apache
#  apache::vhost { 'localhost':
#    ensure => present,
#  }
  #file { 'index.html':
  #  ensure  => 'present',
  #  mode    => '0644',
  #  path    => '/var/www/html',
  #  content => '<h1>Hello World! </h1> <br/> <h2> Test page </h2>',
  #}
  # source for webpage
  #//files/game-day 
#  class { 'apache':
#    default_vhost     => false,
#    default_ssl_vhost => false,
#  }


