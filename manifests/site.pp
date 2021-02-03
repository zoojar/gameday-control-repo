## site.pp ##

File { backup => false }

## Node Definitions ##

node default {
  $role = $trusted['extensions']['pp_role'] ? {
    # always use the trusted fact if we have one
    /\w+/   => $trusted['extensions']['pp_role'],
    default => $facts['role']
  }

  if $role =~ /w+/ {
    include "role::${role}"
  } else {
    fail("${trusted['certname']} does not have a role! Plain & Trusted Fact role & pp_role are empty.")
  }
}
