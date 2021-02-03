# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver
class profile::webserver (
  String $apache_vhost,
  Stdlib::Absolutepath $docroot,
  Stdlib::Absolutepath $web_content,
  String $docroot_group,
  String $docroot_owner,
  Stdlib::Port $web_port,
  Stdlib::Filemode $web_perm,
) {
  class { 'apache': }

  apache::vhost { $apache_vhost:
    serveraliases  => [],
    port           => $web_port,
    manage_docroot => true,
    docroot        => $docroot,
    docroot_owner  => $docroot_owner,
    docroot_group  => $docroot_group,
  }

  file { 'site-content':
      ensure  => file,
      mode    => $web_perm,
      path    => "${docroot}/${web_content}",
      content => epp('profile/web_content.epp', { fqdn => $facts['networking']['fqdn'] }),
  }
}
