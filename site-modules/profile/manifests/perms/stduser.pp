# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::perms::stduser
class profile::perms::stduser {
  group { 'stduser':
    ensure => present,
  }
}
