# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$sshd_config = '/etc/ssh/sshd_config'
service { 'sshd':
  ensure => running,
}
file { $sshd_config:
  ensure => file,
  source => '/var/puppet/files/sshd_config',
  notify => [ Service['sshd'], Exec['testcommand'] ],
}
exec { 'testcommand':
  command     => "/bin/head ${sshd_config}",
  refreshonly => true,
  logoutput   => true,
}
