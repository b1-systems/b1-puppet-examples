# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class tools( $pkg ){
  notify { $pkg:
    message => "I will install ${pkg}",
  }
}
class config() {
  notify { "I will configure ${pkg}":
    require => Notify[$pkg],
  }
}

class { 'tools':
  pkg => 'htop',
}
include config
