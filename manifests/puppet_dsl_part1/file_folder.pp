# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

file { '/var/lib/testdir':
  ensure => directory,
  owner  => 'root',
  group  => 'root',
  mode   => '0755',
}
