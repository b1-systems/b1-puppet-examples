# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class sysctls() {
  $context = '/files/etc/sysctl.conf'
  exec { 'activate-sysctls':
    command     => 'sysctl -p',
    path        => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
    refreshonly => true,
  }
}

define sysctl($value, $key = $title) {
  include sysctls

  augeas { "sysctl-${key}":
    context => $::sysctls::context,
    changes => [ "set ${key} ${value}", ],
    onlyif  => "get ${key} != ${value}",
    notify  => Class['sysctls'],
  }
}

sysctl { 'vm.swappiness':
  value => '10',
}
