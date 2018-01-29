# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

ensure_resource( 'group',
  'mygroup',
  { ensure => present } )

ensure_resource( 'user',
  ['horst', 'klaus'],
  { ensure => absent } )
