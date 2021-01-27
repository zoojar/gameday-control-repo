# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include lab_motd
class lab_motd {
  file { 'ect/motd':
    ensure  => file,
    path    => '/etc/motd/',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "This system is managed by Puppet using the dev branch.\r\n",
    }
}
