# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class apache::service {
  service{'apache-service':
    ensure => running,
    name   => $::apache::service_name,
  }
}
