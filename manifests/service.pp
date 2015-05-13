# == Class: mms::service
class mms::service inherits mms {

  service {'mongodb-mms-automation-agent':
    ensure => running,
    enable => true,
    provider => 'upstart',
    require => [
      Package['mongodb-mms-automation-agent-manager'],
      File['/etc/mongodb-mms/automation-agent.config']
    ],
  }

}
# vim: ft=puppet
