# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class nano( 
  $version = 'present',
  $config = '/var/puppet/files/nanorc',
) {
  package { 'nano':
    ensure => $version,
  }
  file { '/etc/nanorc':
    ensure  => file,
    source  => $config,
    require => Package['nano'],
  }
}
# Hier Benutzung der Klasse
class { 'nano':
  version => latest,
}
# include nano
