# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
class role::webserver {
  #This role would be made of all the profiles that need to be included to make a webserver work
  #All roles should include the base profile
  include profile::base
  include profile::apache
}
