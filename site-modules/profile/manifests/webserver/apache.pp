# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver::apache
class profile::webserver::apache ($docroot) {
  class { 'apache':
    docroot => $docroot,
  }
}
