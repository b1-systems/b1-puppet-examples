# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class ssh::params {
  case $::osfamily {
    'RedHat': {
      $ssh_package_name = 'openssh'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name = 'sshd'
    }
    'Suse': {
      $ssh_package_name = 'openssh'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name = 'sshd'
    }
    default: {
      fail("Module ssh does not support osfamily: ${::osfamily}")
    }
  }
}
