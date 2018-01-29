# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class ntp {
  package { 'ntp':
    ensure => installed,
  }
  file { '/etc/ntp.conf':
    ensure  => file,
    content => "# Managed by puppet\n# Empty ntp.conf\n",
    require => Package['ntp'],
    notify  => Class['ntp::service'],
  }
  include ntp::service

  anchor { 'ntp::begin': } ->
  Class['ntp::service'] ->
  anchor { 'ntp::end': }
}
class ntp::service {
  service { 'ntpd':
    ensure => running,
    enable => true,
  }
}

include ntp
exec {'/bin/head /etc/ntp.conf':
  require   => Class['ntp'],
  logoutput => true,
}
