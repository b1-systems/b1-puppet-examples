# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class ssh_host_key_test {
  # Declare:
  @sshkey { $hostname:
    type => dsa,
    key  => $sshdsakey,
  }
  # Collect:
  Sshkey <| |>
}
