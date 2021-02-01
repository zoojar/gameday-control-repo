# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver::content
class profile::webserver::content {
  file { 'site-content':
    ensure  => present,
    mode    => '0644',
    path    => '/var/www/html/',
    content => '<h1>Hello World! </h1> <br/> <h2> Test page </h2>',
  }
}
