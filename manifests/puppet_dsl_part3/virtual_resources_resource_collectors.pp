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

class users::webadmins() {
  User <| groups == 'webadmins' and title != 'horst' |>
}
class users::database() {
  User <| groups == 'dbadmins' or groups == 'dbusers' |>
}
class groups() {
  group { ['dbadmins','dbusers','webdevs','webadmins']:
    ensure => present,
  }
}

include users::virtual
include users::webadmins
include users::database
include groups
