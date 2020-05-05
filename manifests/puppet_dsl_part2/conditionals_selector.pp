# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$a_config = $facts['os']['name'] ? {
  /^(RedHat|CentOS)$/ => '/etc/httpd/conf.d/app.conf',
  /^(Debian|Ubuntu)$/ => '/etc/apache2/sites-available/app',
  /^(SLES|OpenSuSE)$/ => '/etc/apache2/vhosts.d/app.conf',
}
notice( "I will write my config to ${a_config}" )
