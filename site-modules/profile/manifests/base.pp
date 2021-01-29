#the base profile should include component modules that will be on all nodes
class profile::base {
  include profile::motd
  include profile::ntp
  include profile::sysadmins
  include profile::users
  include profile::sysadmins
}
