# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# Class haveged::service
#   This class handles service management for haveged 
#
# Parameters:
#   [*ensure*]:
#     How should the service be managed?
#     Valid values: running, stopped
#   [*enable*]:
#     Boolean value which determines if the service should be activated at boot
#   [*service_name*]:
#     The name of the service
class haveged::service(
  $ensure,
  $enable,
  $service_name
) {

  validate_string($ensure)
  validate_bool($enable)
  validate_string($service_name)

  $my_ensure = $ensure ? {
    /(running|stopped)/ => $ensure,
  }

  service{$service_name:
    ensure => $my_ensure,
    enable => $enable,
  }

}
