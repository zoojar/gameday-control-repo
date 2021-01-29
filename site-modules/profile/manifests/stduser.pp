# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::stduser
class profile::stduser {
  group { 'stduser':
    ensure => present,
  }
}
