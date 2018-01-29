# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class users::virtual() {
  @user { 'klaus':   ensure => present, }
  @user { 'heinz':   ensure => present, }
  @user { 'olaf':    ensure => present, }
  @user { 'guenter': ensure => present, }
  @user { 'dieter':  ensure => present, }
  @user { 'helmut':  ensure => present, }
  @user { 'horst':   ensure => present, }
}
class users::admins() {
  realize(User['helmut'])
  realize(User['horst'])
  realize(User['olaf'])
}
class users::webdevs() {
  realize(User['dieter'])
  realize(User['helmut'])
  realize(User['horst'])
}

include users::virtual
include users::webdevs
include users::admins
