# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

exec { '/usr/bin/top -n5 -d1 -b > /tmp/top':
  creates => '/tmp/top',
}
