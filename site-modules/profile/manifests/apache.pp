#   include profile::apache
class profile::apache {
  include apache
  apache::vhost { 'localhost':
    ensure => present,
  }
  file { 'index.html':
    path    => '/var/www/html',
    content => '<h1>Hello World! </h1> <br/> <h2> Test page </h2>',
  }
  # source for webpage
  #//files/game-day 

  firewall { '100 allow http and https access':
    dport  => [80, 443],
    proto  => 'tcp',
    action => 'accept',
  }
}


