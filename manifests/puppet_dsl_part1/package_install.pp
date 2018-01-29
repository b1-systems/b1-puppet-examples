# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

package { 'ntp':
  ensure => present,
}

package { 'nmap':
  ensure => latest,
}

package { 'lsof':
  ensure => '4.87-4.el7',
}
