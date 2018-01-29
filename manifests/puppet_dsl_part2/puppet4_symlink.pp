# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$symlinks = ['puppet', 'facter', 'hiera']
$symlinks.each |String $symlink| {
  file { "/usr/local/bin/${symlink}":
    ensure => link,
    target => "/opt/puppetlabs/bin/${symlink}",
  }
}
