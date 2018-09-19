# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

if 1 {
  notice( '1 is true' )
}
if 0 {
  notice( '0 is true' )
}
if -42 {
  notice( '-42 is true' )
}

if !undef {
  notice( 'undef is false' )
}

if [] {
  notice( 'empty array [] is true' )
}

if {} {
  notice( 'empty hash {} is true' )
}

if Service['notexistent'] {
  notice( "Service['notexistent'] is true" )
}
if Resource['myservice']['text'] {
  notice( "Resource['myservice']['text'] is true" )
}
