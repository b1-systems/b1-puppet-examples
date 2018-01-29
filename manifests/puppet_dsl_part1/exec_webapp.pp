# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

exec { 'extract web app':
  command   => 'tar xvf /srv/files/archive.tar',
  cwd       => '/srv/http',
  path      => [ '/bin', '/usr/bin', '/usr/sbin' ],
  creates   => '/srv/http/foobar',
  logoutput => true,
}
