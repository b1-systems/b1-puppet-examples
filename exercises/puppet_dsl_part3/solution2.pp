# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class packages::virtual() {
  @package { 'vsftpd':
    ensure => latest,
  }
}

class app1() {
  realize(Package['vsftpd'])
}
class app2() {
  realize(Package['vsftpd'])
}

include packages::virtual
include app1
include app2
