# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

#$size = $::facts['memorysize_mb']
$size = 5000

if $size <= 1024 {
  fail( 'I am sorry for you' )
}
elsif $size > 1024 and $size <= 4096 {
  warning( 'Better, but not good enough' )
}
else {
  notice( "Now let's talk business here" )
}
