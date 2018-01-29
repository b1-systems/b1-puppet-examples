# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class testmodule::params {
  case $::facts['os']['family'] {
    'RedHat': {
      $message = 'The hat is red'
      $package = 'zsh'
    }
    'Suse': {
      $message = 'This OS is green'
      $package = 'aspell-de'
    }
    'Debian': {
      $message = 'Swirly swirl OS'
      $package = 'moon-buggy'
    }
    default: {
      fail("${module_name} does not support ${::facts['os']['family']}")
    }
  }

}
