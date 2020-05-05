# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

file { '/var/tmp/erb-myconfig':
  ensure  => present,
  content => inline_template("12 + 12 = <%= 12 + 12 %>\n"),
}
