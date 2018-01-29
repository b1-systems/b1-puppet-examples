# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# Class haveged::params
#   This class sets the default parameters for the haveged module
class haveged::params() {

  # We only care about RHEL and SUSE based distros for now
  case $::osfamily {
    'SUSE': {
      $packages = ['haveged',]
      $service_name = 'haveged'
    }
    'RedHat': {
      $packages = ['haveged',]
      $service_name = 'haveged'
    }
    default: {
      fail("Class[haveged::params]: ${::osfamily} is not supported at the moment")
    }
  }

  # conditional triggers
  $manage_packages = true
  $manage_service = true

  # package class may be overridden by the user
  $package_class = '::haveged::install'

  $ensure = 'present'


}
