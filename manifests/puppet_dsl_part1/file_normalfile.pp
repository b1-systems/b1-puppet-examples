# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

file { '/etc/bashrc':
  ensure => file,
  source => '/var/lib/puppet/bashrc',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
}
