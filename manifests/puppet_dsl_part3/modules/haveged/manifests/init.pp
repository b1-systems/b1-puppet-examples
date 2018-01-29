# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# Class haveged
#   This module serves as a simple demo in order to show some
#   current best practices
#
# Parameters:
#   [*ensure*]:
#     How should resources be applied?
#     Default: present
#     Valid values: present, absent, enabled, deactivated
#
#   [*manage_packages*]:
#     Should this module manage the needed packages for haveged?
#     Default: true
#
#   [*manage_service*]:
#     Should this module start and activate the service?
#     Default: true
#
#   [*packages*]:
#     Array storing the needed packages for this service
#     Default: Depends on distro, see params.pp
#
#   [*service_name*]:
#     Name of the service to be managed
#     Default: Depends on distro, see params.pp
#
#   [*package_class*]:
#     The class used to manage packages
#     Default: ::haveged::install
#     If overridden, the custom class needs to have the following attributes:
#       ensure: present, absent
#       packages: Array of package names
# With RDoc you have to make sure that no newline is between you comment and code block!
class haveged(
  $ensure          = $::haveged::params::ensure,
  $manage_packages = $::haveged::params::manage_packages,
  $manage_service  = $::haveged::params::manage_service,
  $packages        = $::haveged::params::packages,
  $service_name    = $::haveged::params::service_name,
  $package_class   = $::haveged::params::package_class,
) inherits ::haveged::params {
  # Validate some input, will ya?
  validate_string($ensure)
  validate_bool($manage_packages)
  validate_bool($manage_service)
  validate_array($packages)
  validate_string($service_name)
  validate_string($package_class)

  # Set package/service_ensure depending on ensure attribute 
  case $ensure {
    'enabled','present': {
      $package_ensure = 'present'
      $service_ensure = 'running'
      $service_enable = true
      Class[$package_class] -> Class['::haveged::service']
    }
    'disabled': {
      $package_ensure = 'present'
      $service_ensure = 'stopped'
      $service_enable = false
      Class[$package_class] -> Class['::haveged::service']
    }
    'absent': {
      $package_ensure = 'absent'
      $service_ensure = 'stopped'
      $service_enable = false
      Class['::haveged::service'] -> Class[$package_class]
    }
    default: {
      fail("Class[haveged]: Invalid ensure parameter ${ensure} given. enabled/present/disabled/absent are valid.")
    }
  }

  class{$package_class:
    ensure   => $package_ensure,
    packages => $packages,
  }

  class{'::haveged::service':
    ensure       => $service_ensure,
    enable       => $service_enable,
    service_name => $service_name,
  }

}
