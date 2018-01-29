# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$conf_values = [ 'foo', 'bar', 'baz' ]

file { '/var/tmp/erb_looping':
  ensure  => file,
  content => template('looping.erb')
}
