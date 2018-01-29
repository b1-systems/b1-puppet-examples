# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# Ich moechte immer /bin, sbin, /usr/bin und /usr/sbin durchsuchen
Exec {
  path      => [ '/bin', '/sbin', '/usr/bin', '/usr/sbin' ],
  logoutput => true,
}
