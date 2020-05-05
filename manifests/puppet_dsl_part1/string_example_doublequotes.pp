# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$variable = "Willkommen in der Beispiel GmbH\n\nAktuelle Neuigkeiten:\n  - keine\n"

file { '/etc/motd':
  ensure  => file,
  content => $variable,
}
