# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::base
class profile::base (
  String $ntp_server
){
  include profile::motd
}
