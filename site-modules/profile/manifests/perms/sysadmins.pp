# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::perms::sysadmins
class profile::perms::sysadmins {
  group { 'sysadmins':
    ensure => present,
  }
}
