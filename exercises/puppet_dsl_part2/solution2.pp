# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

case $::facts['osfamily'] {
  'RedHat': {
    $httpd_package = 'httpd'
    $httpd_service = 'httpd'
  }
  'Suse': {
    $httpd_package = 'apache2'
    $httpd_service = 'apache2'
  }
  default: { fail("OS family ${::facts['osfamily']} not supported") }
}

package { "$httpd_package":
  ensure => installed,
}

service { "$httpd_service":
  ensure  => running,
  enable  => true,
  require => Package[$httpd_package],
}
