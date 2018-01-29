# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

if $::facts['is_virtual'] {
  notice( 'We are inside VM' )
}
unless $::facts['selinux'] {
  notice( 'No SELinux' )
}
unless $::facts['os']['name'] =~ /^(SLES|RedHat)$/ {
  warning( 'Not enough Enterprise present ;-)' )
}
