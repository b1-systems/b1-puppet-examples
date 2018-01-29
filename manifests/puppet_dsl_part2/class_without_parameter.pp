# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class admintools() {
  package{ ['nano', 'tcpdump', 'sysstat', 'screen', 'lsof']:
    ensure => latest,
  }
  file { '/etc/nanorc':
    ensure  => file,
    source  => '/var/puppet/files/nanorc',
    require => Package['nano'],
  }
}

include admintools
#class { 'admintools': }
