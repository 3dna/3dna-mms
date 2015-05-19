# == Class: mms::install
class mms::install inherits mms {

  package {'mongodb-mms-automation-agent-manager':
    ensure => latest,
  }

}
# vim: ft=puppet
