# This motd declares a string as assigns the var $content to it, then a new class declared 'motd'
# and content => $content, this is a lookup for hiera to search for the var $content
# and return it's value, in this case the value is in host1.mllab.yaml - profile::motd::content: ""
# This works due to hiera.yaml having the following:
# paths:
# - "nodes/%{trusted.certname}.yaml" this is a trusted fact "certname" : "host1.mllab", and can be found under
# Trusted in the PE console Nodes - Facts.
class profile::motd (
  String $content
){
  class { 'motd':
    content => epp('profile/motd.epp', { fqdn => $facts['networking']['fqdn'] }),
  }
}
