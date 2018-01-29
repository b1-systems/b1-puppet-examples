# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class users::virtual() {
  @user { 'horst':
    ensure => present,
    groups => ['webadmins',],
  }
  @user { 'uwe':
    ensure => present,
    groups => ['dbusers', 'webadmins'],
  }
  @user { 'klaus':
    ensure => present,
    groups => ['webadmins', 'webdevs'],
  }
}
