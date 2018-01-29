# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

@host {$::fqdn:
  ensure       => present,
  host_aliases => $::hostname,
  ip           => $::ipaddress,
}

Host <| |>
