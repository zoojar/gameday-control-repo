class profile::motd (
  String $content
){

  #The base profile should include component modules that will be on all nodes
  class { 'motd':
    content => $content,
  }
}
