#This role would be made of all the profiles that need to be included to make a webserver work

#All roles should include the base profile
class role::webserver {
  include profile::base
  include profile::sysadmins
  include profile::stduser
  include profile::users
  include profile::sysadmins
  class { 'firewall': }
  firewall {
    before  => Class['profile::fw::post'],
    require => Class['profile::fw::pre'],
  }
  class { 'apache':
    default_vhost     => false,
    default_ssl_vhost => false,
  }
}
