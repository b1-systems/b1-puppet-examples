# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class app1() {
  ensure_packages('vsftpd', { ensure => absent })
}
class app2() {
  ensure_packages('vsftpd', { ensure => present })
}

include app1
include app2
