# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class app1() {
  package { 'zsh':
    ensure => installed,
  }
}
class app2() {
  package { 'zsh':
    ensure => installed,
  }
}
include app1
include app2
