## site.pp ##

File { backup => false }

## Node Definitions ##

node default {
  $role = $trusted['extensions']['pp_role']
  notify { "The role is: ${role}": }

  case $role {
    default: {
    }
    'webserver': {
      include profile::base
      include role::webserver
    }
    undef, '': {
      fail("${trusted['certname']} does not have a pp_role trusted fact!")
    }
  }
}
