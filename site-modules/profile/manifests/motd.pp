# @summary A short summary of the purpose of this class
#
# A description of what this class does
# Used %{trusted.certname} from the trusted facts.
# @example
class profile::motd (
  String $content
){
  class { 'motd':
    content => $content,
  }
}
