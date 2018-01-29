# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class testmodule(
  $message = $::testmodule::params::message,
  $package = $::testmodule::params::package,
) inherits ::testmodule::params {
  notify { 'testmodule saying hello':
    message => $message,
  } ->
  package { $package:
    ensure => present,
  }
}
