# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class users::virtual() {
  @user {'klaus':   ensure => present, }
  @user {'heinz':   ensure => present, }
  @user {'horst':   ensure => present, }
  @user {'dieter':  ensure => present, }
  @user {'helmut':  ensure => present, }
  @user {'olaf':    ensure => present, }
  @user {'guenter': ensure => present, }
  # https://www.youtube.com/watch?v=k3Lw0OertcU
}
