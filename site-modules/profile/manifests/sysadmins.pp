# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::sysadmins
class profile::sysadmins {
  group { 'sysadmins':
    ensure => present,
  }
}
