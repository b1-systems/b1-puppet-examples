# copyright: B1 Systems GmbH <info@b1-systems.de>, 2019
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$company = '123 GmbH'

$mycontent = @("EOT"/Lt)
  Willkommen bei der ${company}

  Lange Zeile, \
  geht hier weiter

  Aktuelle Neuigkeiten:
  \t- keine
  | EOT

file { '/etc/motd':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => $mycontent,
}
