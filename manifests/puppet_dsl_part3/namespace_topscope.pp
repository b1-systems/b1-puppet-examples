# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$variable1 = 'Hallo Welt'

class myclass() {
  $variable1 = 'Foobar'
  notice( "Wert von variable1 im Top Scope: ${::variable1}" )
  notice( "Wert von variable1 im Local Scope: ${variable1}" )
}

include myclass
