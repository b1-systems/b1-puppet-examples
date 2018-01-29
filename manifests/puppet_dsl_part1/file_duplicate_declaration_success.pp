# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

file { 'datei1':
  ensure => present,
  path   => '/tmp/testdatei1',
}

file { 'datei2':
  ensure => absent,
  path   => '/tmp/testdatei2',
}
