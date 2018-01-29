# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

ensure_resources( 'user',
  { 'horst' => { uid => '1042', gid => 'mygroup' },
    'klaus' => { ensure => absent } },
  { ensure => present } )
