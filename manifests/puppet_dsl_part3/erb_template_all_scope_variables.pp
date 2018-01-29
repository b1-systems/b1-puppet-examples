# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$variable1 = 'foobar'
$hello = '5'

file { '/var/tmp/all_scope_variables':
  ensure  => file,
  content => template('all_scope_variables.erb'),
}
