## site.pp ##

File { backup => false }

## Node Definitions ##

node default {
  /* $role = lookup('role', false)
  if $role != false {
    hiera_include('role')
  } else {
    include 'role::undefined'
  } */
}
