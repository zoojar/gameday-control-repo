# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver
class profile::webserver (
  $docroot = '/var/www/html/'
) {
  class { 'profile::webserver::apache':
    docroot => $docroot
  }

  class { 'profile::webserver::content':
    docroot => $docroot
  }

  firewall { '100 allow http and https access':
    dport  => [80, 443],
    proto  => tcp,
    action => accept,
  }
}
