# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class apache(
  $package_name = $::apache::params::package_name,
  $service_name = $::apache::params::service_name,
) inherits ::apache::params {
  # Puppet < 3.4, needs puppetlabs-stdlib
  anchor { 'apache::begin': } ->
  class { 'apache::install': } ->
  class { 'apache::service': } ~>
  anchor { 'apache::end': }
  # puppet >=3.4
  # contain ::apache::install
  # contain ::apache::service
}
