# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

file { '/tmp/sysinfo':
  ensure  => file,
  content => "Prozessor: ${facts['processors']['models'][0]}
Anzahl CPUs: ${facts['processors']['count']}
Uptime: ${facts['system_uptime']['uptime']}
Arbeitsspeicher: ${facts['memory']['system']['total']}
",
}
