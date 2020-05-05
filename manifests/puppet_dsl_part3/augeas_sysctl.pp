# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# Not needed anymore for recent Puppet versions -> AIO packages
#package { 'ruby-augeas':
#  ensure => installed,
#} -> Augeas <| |>

$key = 'vm.swappiness'
$value = '40'
augeas { "sysctl_conf/${key}":
  context => '/files/etc/sysctl.conf',
  changes => [ "set ${key} '${value}'", ],
  onlyif  => "get ${key} != '${value}'",
  notify  => Exec['sysctl'],
}

exec { 'sysctl':
  command     => '/sbin/sysctl -p',
  refreshonly => true,
}
