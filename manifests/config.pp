# == Class: mms::config
class mms::config inherits mms {

  file {
  '/etc/mongodb-mms/automation-agent.config':
    content => template($module_name/automation-agent.config.erb),
    owner  => 'mongodb',
    group  => 'mongodb',
    mode   => '0644',
    require => Package['mongodb-mms-automation-agent-manager'];
  '/opt/mongodb-mms-automation':
    ensure => 'directory',
    owner => 'mongodb',
    group  => 'mongodb',
    mode   => '0775',
    require => Package['mongodb-mms-automation-agent-manager'];
  '/opt/mongodb-mms-automation/bin':
    ensure => 'directory',
    owner => 'mongodb',
    group  => 'mongodb',
    mode   => '0775',
    require => Package['mongodb-mms-automation-agent-manager'];
  '/opt/mongodb-mms-automation/versions':
    ensure => 'directory',
    owner => 'mongodb',
    group  => 'mongodb',
    mode   => '0775',
    require => Package['mongodb-mms-automation-agent-manager'];
  '/var/log/mongodb-mms-automation':
    ensure => 'directory',
    owner => 'mongodb',
    group  => 'mongodb',
    mode   => '0775',
    require => Package['mongodb-mms-automation-agent-manager'];
  '/var/lib/mongodb-mms-automation':
    ensure => 'directory',
    owner => 'mongodb',
    group  => 'mongodb',
    mode   => '0775',
    require => Package['mongodb-mms-automation-agent-manager'];
  }

}
# vim: ft=puppet
