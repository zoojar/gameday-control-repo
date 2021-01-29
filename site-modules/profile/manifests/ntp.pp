# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::ntp
class profile::ntp {
  class { 'ntp':
    servers => [ 'server 0.uk.pool.ntp.org', 'server 2.uk.pool.ntp.org', 'server 3.uk.pool.ntp.org' , 'server 4.uk.pool.ntp.org' ],
  }
}
