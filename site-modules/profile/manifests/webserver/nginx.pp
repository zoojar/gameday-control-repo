# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver::nginx
class profile::webserver::nginx ($docroot) {
  include nginx

  nginx::resource::server{'host1.mllab':
    www_root             => $docroot,
    use_default_location => false,
  }

  # nginx is weird and gets mad if you don't have a host record. Don't do this
  # in a real environment.
  host { 'host1.mlab':
    ip => '127.0.0.1',
  }
}
