# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$myhostname = 'db42.local.site'

if $myhostname =~ /^db(\d+)\./ {
  notify { "Welcome on server #${1}": }
}
