# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

#$myos = $facts['os']['name']
$myos = 'Debian'

case $myos {
  'RedHat', 'CentOS':  { $a_config = '/etc/httpd/conf.d/app.conf' }
  /^(Debian|Ubuntu)$/: { $a_config = '/etc/apache2/sites-available/app' }
  'SLES', 'OpenSuSE':  { $a_config = '/etc/apache2/vhosts.d/app.conf' }
  default:             { fail('No supported OS') }
}
notice( "I will write my config to ${a_config}" )
