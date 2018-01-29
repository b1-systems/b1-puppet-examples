# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

ensure_packages( 'emacs',
  { ensure => absent } )

ensure_packages( ['zsh', 'nano'],
  { ensure => present } )

ensure_packages( { 'ksh' => { ensure => latest },
                   'nmap' => {} },
  { ensure => present } )
