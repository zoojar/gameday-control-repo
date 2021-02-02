# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::webserver
class profile::webserver {
  class { 'apache': }

$apache_vhost = lookup('apache_vhost')
$docroot = lookup('docroot')
$docroot_path = lookup('docroot_path')
$docroot_group = lookup('docroot_group')
$docroot_owner = lookup('docroot_owner')
#$web_content = lookup('web_content')
$web_port = lookup('web_port')
$web_perm = lookup('web_perm')

apache::vhost { $apache_vhost:
  serveraliases => [],
  docroot       => $docroot,
  docroot_owner => $docroot_owner,
  docroot_group => $docroot_group,
  port          => $web_port,
}

file { '/var/www/html/':
  ensure  => directory,
}

file { 'site-content':
    ensure  => present,
    mode    => $web_perm,
    path    => $docroot_path,
    content => epp('profile/web_content.epp'),
    #content => $web_content,
  }
}
