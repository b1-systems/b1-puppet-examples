# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define filewithlink() {
  file { "/var/tmp/${title}":
    ensure  => file,
    content => "Dies ist ${title}\n",
  }
  file { "/var/tmp/${title}-link":
    ensure => link,
    target => "/var/tmp/${title}",
  }
}
filewithlink { 'datei1': }
filewithlink { 'datei2': }
