# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

package { 'epel-release':
  ensure   => present,
  provider => 'rpm',
  source   => 'http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm',
}
