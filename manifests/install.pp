# == Class: mms::install
class mms::install inherits mms {

  package {['mongodb-mms-automation-agent-manager','munin-node']:
    ensure => latest,
  }

}
# vim: ft=puppet
