# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::users
class profile::perms::users {
  user { 'bob':
    ensure => present,
    uid    => 9996,
    groups => sysadmins,
  }
  user { 'ben':
    ensure => present,
    uid    => 9997,
    groups => stduser,
  }
  user { 'jane':
    ensure => present,
    uid    => 9998,
    groups => stduser,
  }
  user { 'sue':
    ensure => present,
    uid    => 9999,
    groups => sysadmins,
  }
}
