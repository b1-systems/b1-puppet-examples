# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class class1() {
  file { '/tmp/erb-variables':
    ensure  => file,
    content => template('variable_lookup.erb'),
  }
}

class class2() {
  $myvar = 'Hello World'
  notice("From class2: myvar has value ${myvar}")
}

include class1
include class2

Class['class2'] -> Class['class1']
