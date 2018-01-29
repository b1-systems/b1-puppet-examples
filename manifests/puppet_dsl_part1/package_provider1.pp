# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

package { 'epel-release':
  ensure   => present,
  provider => 'rpm',
  source   => '<EPEL-MIRROR>/epel-release-7-9.noarch.rpm',
}
