# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

if $facts['memory']['system']['total_bytes'] <= 1073741824 {
  # <= 1 GiB
  fail( 'I am sorry for you' )
}
elsif $facts['memory']['system']['total_bytes'] > 1073741824 and
        $facts['memory']['system']['total_bytes'] <= 4294967296 {
  # > 1 GiB and <= 4 GiB
  warning( 'Better, but not good enough' )
}
else {
  notice( "Now let's talk business here" )
}
