# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
class profile::motd (
  String $content
){

  #The base profile should include component modules that will be on all nodes
  class { 'motd':
    content => $content,
  }
}
