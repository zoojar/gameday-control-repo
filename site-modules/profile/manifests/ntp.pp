# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::ntp
class profile::ntp {
  class { 'ntp':
    country => 'uk',
    servers => '',
  }
}
