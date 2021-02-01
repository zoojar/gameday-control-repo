# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::perms::stdusers
class profile::perms::stdusers {
  group { 'stdusers':
    ensure => present,
  }
}
