# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$variable1 = 'Hello World'

class myclass {
  $variable1 = 'Hello from myclass'
  file { '/var/tmp/template_scope':
    ensure  => file,
    content => template('mytemplates/scope.erb'),
  }
}

include myclass
