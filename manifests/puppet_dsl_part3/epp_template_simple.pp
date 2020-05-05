# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$variable1 = 'Hello World'

file { '/var/tmp/epp_template_simple':
  ensure  => file,
  content => epp('mytemplates/simple.epp'),
}
