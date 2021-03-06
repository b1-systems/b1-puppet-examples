# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$variable = 'Top variable'
notice( "variable: ${variable}" )

node default {
  $variable = 'Node variable'
  notice( "variable: ${variable}" )
  notice( "::variable: ${::variable}" )
  include myclass
}

class myclass() {
  $variable = 'Class variable'
  notice( "variable: ${variable}" )
  notice( "::variable: ${::variable}" )
}
