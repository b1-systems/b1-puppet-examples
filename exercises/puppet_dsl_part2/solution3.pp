# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

package { 'openssh':
  ensure => present,
}

file { '/etc/ssh/sshd_config':
  ensure  => file,
  source  => '/var/lib/puppet/myfiles/sshd_config',
  owner   => 'root',
  group   => 'root',
  mode    => '0640',
  require => Package['openssh'],
  notify  => Service['sshd'],
}

service { 'sshd':
  ensure => running,
  enable => true,
}
