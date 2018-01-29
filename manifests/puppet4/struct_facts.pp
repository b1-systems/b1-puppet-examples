# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html


# prints all ip addresses
$facts['networking']['interfaces'].each |$interface,$data| {
  if $data['ip'] {
    $addr = $data['ip']
    $addr6 = $data['ip6']
  }
  elsif $data['dhcp'] {
    $addr = $data['dhcp']
    $addr6 = $data['dhcp6']
  }
  else {
    $addr = 'unknown'
    $addr6 = 'unkown'
  }
    notice("${interface} IPv4: ${addr}, IPv6: ${addr6}")
}
