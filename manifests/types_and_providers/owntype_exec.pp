# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$source = 'https://github.com/githubtraining/hellogitworld'
$target = '/tmp/hellogitworld1'

exec { 'gitrepo':
  command   => "git clone ${source} ${target}",
  path      => ['/usr/bin', 'bin'],
  creates   => $target,
  logoutput => true,
}
