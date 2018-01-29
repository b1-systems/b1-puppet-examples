# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$top_variable = 'Hi. My name is Top Scope'
notice( "top_variable: ${::top_variable}" )
notice( "node_variable: ${node_variable}" )
notice( "class_variable: ${class_variable}" )
node default {
  $node_variable = 'Hello from node'
  notice( "top_variable: ${::top_variable}" )
  notice( "node_variable: ${node_variable}" )
  notice( "class_variable: ${class_variable}" )
  include myclass
}
class myclass() {
  $class_variable = 'Hello from class'
  notice( "top_variable: ${::top_variable}" )
  notice( "node_variable: ${node_variable}" )
  notice( "class_variable: ${class_variable}" )
}
