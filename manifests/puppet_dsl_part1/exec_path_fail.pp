# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

exec { 'Setting PATH':
  command     => 'echo PATH = $PATH',
  environment => ['PATH=/bin:/usr/bin'],
  logoutput   => true,
}
