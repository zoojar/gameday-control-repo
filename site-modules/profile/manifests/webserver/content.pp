# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver::content
class profile::webserver::content ($docroot) {
  # this resource ensures that all parent directories also exist, like mkdir -p
  dirtree { $docroot:
    path    => $docroot,
    parents => true,
  }
  file { $docroot:
    ensure  => directory,
    source  => 'puppet:///modules/profile/webserver/files/docroot',
    recurse => true,
  }
}
